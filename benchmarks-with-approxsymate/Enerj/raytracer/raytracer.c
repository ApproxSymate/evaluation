/*
 * raytracer.c
 *
 */

#include <math.h>
#include <stdio.h>
#include "klee/klee.h"

void init(int args1, int args2, int args3, int args4);
int texture1(int x, int y, int z);

int w, h;
int k;
int texture, light;
int lcoff;
int sng;
int numIterations = 0;

int main() {

	int args1, args2, args3, args4;

	args1 = 2;
	args2 = 1;
	klee_make_symbolic(&args3, sizeof(int), "arg3");
	klee_make_symbolic(&args4, sizeof(int), "arg4");

	klee_track_error(&args3, "arg3_err");
	klee_track_error(&args4, "arg4_err");

	init(args1, args2, args3, args4);
}

void init(int args1, int args2, int args3, int args4) {
	w = 4;
	h = 2;
	texture = args1;
	light = args2;
	int pixels[w * h];
	int index, x, y;
	int xe, ye, ze, xd, yd, zd;
	int ix, iy, iz;
	int nx, ny, nz;
	int lx, ly, lz;
	int lly;
	lly = args3;
	ye = args4;

	klee_make_symbolic(&nx, sizeof(int), "nx");
	klee_make_symbolic(&ny, sizeof(int), "ny");
	klee_make_symbolic(&nz, sizeof(int), "nz");

	klee_track_error(&nx, "nx_err");
	klee_track_error(&ny, "ny_err");
	klee_track_error(&nz, "nz_err");

	int bl = (255 << 24);
	int t;
	int l;
	int w1, h1;
	w1 = w / 2;
	h1 = h / 2;

	klee_make_symbolic(&xe, sizeof(int), "xe");
	klee_track_error(&xe, "xe_err");

	klee_make_symbolic(&ze, sizeof(int), "ze");
	klee_track_error(&ze, "ze_err");

	//not approximating this one since it is used in a path condition on line 95
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
				klee_assume(sng != 0);
				sng = 1 / sng;
				lcoff = (lx * nx + ly * ny + lz * nz) * sng;
				pixels[index] = texture1(ix, iy, iz);
			} else {
				pixels[index] = bl;
			}
			numIterations++;
		}
	}
	/*for (int i = 0; i < w * h; i++) {
	 printf("%d\n", pixels[i] & 0xff);
	 printf("%d\n", (pixels[i] >> 8) & 0xff);
	 printf("%d\n", (pixels[i] >> 16) & 0xff);
	 }*/
	//checkErrors(pixels);
}

int texture1(int x, int y, int z) {
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


