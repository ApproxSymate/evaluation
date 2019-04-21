/*
 * imagej-symbolic.c
 *
 * Compile with: clang -I klee/include -emit-llvm -c -g imagej-symbolic.c
 * Run with: klee --write-kqueries --precision imagej-symbolic.bc
 *
 *  Created on: Aug 3, 2018
 *      Author: himeshi
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define WIDTH 3
#define HEIGHT 2
#define MAX_STACK_SIZE 1

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

	//initialize
	targetColor = 2;
	stackSize = 0;
	maxStackSize = MAX_STACK_SIZE;
	xstack = (int *) malloc(sizeof(int) * maxStackSize);
	ystack = (int *) malloc(sizeof(int) * maxStackSize);

	klee_make_symbolic(pixels, sizeof(int) * 6, "__arr32__pixels");
	klee_make_symbolic(&targetColor, sizeof(int), "targetColor");
	klee_make_symbolic(xstack, sizeof(int) * 1, "__arr32__xstack");
	klee_make_symbolic(ystack, sizeof(int) * 1, "__arr32__ystack");

	klee_assume(pixels[0][0] >= 0);
	klee_assume(pixels[0][1] >= 0);
	klee_assume(pixels[1][0] >= 0);
	klee_assume(pixels[1][1] >= 0);
	klee_assume(pixels[2][0] >= 0);
	klee_assume(pixels[2][1] >= 0);

	klee_track_error(pixels, "pixels_err");
	klee_track_error(xstack, "xstack_err");
	klee_track_error(ystack, "ystack_err");
	klee_track_error(&targetColor, "targetColor_err");

	fill(0, 0);
}

int getPix(int x, int y) {
	int returnVal;
	if (x < 0 || x >= WIDTH || y < 0 || y >= HEIGHT)
		returnVal = -1;
	else
		returnVal = pixels[x][y];
	return returnVal;
}

void setPix(int x, int y, int c) {
	if (x < 0 || x >= WIDTH || y < 0 || y >= HEIGHT)
		return;
	else
		pixels[x][y] = c;
}

int popx() {
	int returnVal;
	if (stackSize == 0)
		returnVal = -1;
	else
		returnVal = xstack[stackSize - 1];

	return returnVal;
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

