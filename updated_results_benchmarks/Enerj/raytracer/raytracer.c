/*
 * raytracer.c
 *
 * gcc raytracer.c -o raytracer -lm
 *
 *  Created on: Aug 2, 2018
 *      Author: himeshi
 */

#include <math.h>
#include <stdio.h>

void init(int args1, int args2, int args3, int args4);
int texture1(float x, float y, float z);

int w, h;
float k;
int texture, light;
float lcoff;
float sng;
int numIterations = 0;

int main() {

	int args1 = 2;
	int args2 = 1;
	int args3 = 30;
	int args4 = 10;

	init(args1, args2, args3, args4);
}

void init(int args1, int args2, int args3, int args4) {
	w = 400;
	h = 256;
	texture = args1;
	light = args2;
	int pixels[w * h];
	int index, x, y;
	float xe, ye, ze, xd, yd, zd;
	float ix, iy, iz;
	float nx, ny, nz;
	float lx, ly, lz;
	float lly;
	lly = args3;
	ye = args4;

	nx = 0;
	ny = 1;
	nz = 0;
	int bl = (255 << 24);
	float t;
	float l;
	float w1, h1;
	w1 = w / 2;
	h1 = h / 2;

	xe = 0;

	ze = 0;
	k = -1;

	for (y = 0; y < h; y++) {
		for (x = 0; x < w; x++) {
			t = -1;
			xd = (x - w1) / w1;
			yd = (h1 - y) / h1;
			zd = -1;
			l = xd * xd + yd * yd + zd * zd;
			xd /= l;
			yd /= l;
			zd /= l;

			if ((k - ye) * yd <= 0) {
				t = -1;
			} else {
				t = (k - ye) / yd;
			}

			index = y * w + x;
			if (t >= 0) {
				ix = xe + t * xd;
				iy = ye + t * yd;
				iz = ze + t * zd;
				lx = 0;
				ly = lly;
				lz = 0;
				lx = lx - ix;
				ly = ly - iy;
				lz = lz - iz;
				sng = sqrt(lx * lx + ly * ly + lz * lz);
				sng = 1.0 / sng;
				lcoff = (lx * nx + ly * ny + lz * nz) * sng;
				pixels[index] = texture1(ix, iy, iz);
			} else {
				pixels[index] = bl;
			}
			numIterations++;
		}
	}
	for (int i = 0; i < w * h; i++) {
		printf("%d\n", pixels[i] & 0xff);
		printf("%d\n", (pixels[i] >> 8) & 0xff);
		printf("%d\n", (pixels[i] >> 16) & 0xff);
	}
	//checkErrors(pixels);
}

int texture1(float x, float y, float z) {
	int v;
	int col;
	int r, g, b;
	r = 255;
	b = 0;
	col = 0;
	if (light != 0) {
		r = (int) (255 * lcoff);
	}
	b = r;

	if (texture == 1) {
		col = (255 << 24) | (255 << 16);
	} else if (texture == 2) {
		v = ((int) round(x) + (int) round(z)) % 2;
		if (v == 0) {
			col = (255 << 24) | b;
		} else {
			col = (255 << 24) | (r << 16);
		}
	}

	return col;
}

