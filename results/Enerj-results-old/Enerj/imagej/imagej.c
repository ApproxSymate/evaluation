/*
 * imagej.c
 *
 * gcc imagej.c -o imagej
 *
 *  Created on: Aug 3, 2018
 *      Author: himeshi
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define WIDTH 32
#define HEIGHT 32
#define MAX_STACK_SIZE 500

int *xstack;
int *ystack;
int stackSize;
int pixels[WIDTH][HEIGHT];
int targetColor;
int maxStackSize;

int fill(int x, int y);
int getPix(int x, int y);
void setPix(int x, int y, int c);
int popx();
int popy();
void fillLine(int x1, int x2, int y);
void push(int x, int y);

int main() {
	int i, j;
	char c;

	FILE *fp = fopen("/home/himeshi/Projects/Approx/benchmarks/adrian-enerj-apps-6c8953f1494d/imagefill/input.txt", "r");

	c = getc(fp);
	int x = 0, y = 0;
	while (c != -1) {
		if (c == '\n') {
			pixels[x][y] = 0;
			x++;
			y = 0;
		} else {
			y++;
			pixels[x][y] = c - '0';
		}
		c = getc(fp);
	}

	for (i = 0; i < HEIGHT; i++) {
		for (j = 0; j < WIDTH; j++) {
			printf("%d", pixels[i][j]);
		}
		printf("\n");
	}

	//initialize
	targetColor = 2;
	stackSize = 0;
	maxStackSize = MAX_STACK_SIZE;
	xstack = (int *) malloc(sizeof(int) * maxStackSize);
	ystack = (int *) malloc(sizeof(int) * maxStackSize);

	fill(0, 0);

	printf("\n\n");

	for (i = 0; i < HEIGHT; i++) {
		for (j = 0; j < WIDTH; j++) {
			printf("%d", pixels[i][j]);
		}
		printf("\n");
	}

}

int getPix(int x, int y) {
	if (x < 0 || x >= WIDTH || y < 0 || y >= HEIGHT)
		return -1;
	else
		return pixels[x][y];
}

void setPix(int x, int y, int c) {
	if (x < 0 || x >= WIDTH || y < 0 || y >= HEIGHT)
		return;
	else
		pixels[x][y] = c;
}

int popx() {
	if (stackSize == 0)
		return -1;
	else
		return xstack[stackSize - 1];
}

int popy() {
	int value = ystack[stackSize - 1];
	stackSize--;
	return value;
}

void fillLine(int x1, int x2, int y) {
	int x;
	if (x1 > x2) {
		int t = x1;
		x1 = x2;
		x2 = t;
	}
	for (x = x1; x <= x2; x++)
		setPix(x, y, targetColor);
}

void push(int x, int y) {
	stackSize++;
	if (stackSize == MAX_STACK_SIZE) {
		int *newXStack = (int *) malloc(sizeof(int) * maxStackSize * 2);
		int *newYStack = (int *) malloc(sizeof(int) * maxStackSize * 2);
		memcpy(newXStack, xstack, sizeof(int) * maxStackSize);
		memcpy(newYStack, ystack, sizeof(int) * maxStackSize);
		xstack = newXStack;
		ystack = newYStack;
		maxStackSize *= 2;
	}
	xstack[stackSize - 1] = x;
	ystack[stackSize - 1] = y;
}

int fill(int x, int y) {
	int width = WIDTH;
	int height = HEIGHT;
	int color = getPix(x, y);
	fillLine(x, x, y);
	int newColor = getPix(x, y);
	setPix(x, y, color);

	if (color == newColor)
		return -1;

	stackSize = 0;
	push(x, y);

	while (1) {
		x = popx();
		if (x == -1)
			return 1;
		y = popy();

		if (getPix(x, y) != color)
			continue;
		int x1 = x;
		int x2 = x;

		while (getPix(x1, y) == color && x1 >= 0)
			x1--; // find start of scan-line
		x1++;

		while (getPix(x2, y) == color && x2 < width)
			x2++;  // find end of scan-line
		x2--;

		fillLine(x1, x2, y); // fill scan-line

		int inScanLine = 0;
		int i;
		for (i = x1; i <= x2; i++) { // find scan-lines above this one
			if (!inScanLine && y > 0 && getPix(i, y - 1) == color) {
				push(i, y - 1);
				inScanLine = 1;
			} else if (inScanLine && y > 0 && getPix(i, y - 1) != color)
				inScanLine = 0;
		}

		inScanLine = 0;
		for (i = x1; i <= x2; i++) { // find scan-lines below this one
			if (!inScanLine && y < height - 1 && getPix(i, y + 1) == color) {
				push(i, y + 1);
				inScanLine = 1;
			} else if (inScanLine && y < height - 1
					&& getPix(i, y + 1) != color)
				inScanLine = 0;
		}
	}
}

