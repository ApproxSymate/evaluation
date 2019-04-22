/*
 * ep-symbolic.c
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g ep-symbolic.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision ep-symbolic.bc
 *
 *  Created on: Aug 25, 2018
 *      Author: himeshi
 */

#include "klee/klee.h"

int r23, t23;

int randlc(int *x, int a) {

	int star_x_temp, a_temp;
	const int r46 = r23 * r23;
	const int t46 = t23 * t23;

	int t1, t2, t3, t4, a1, a2, x1, x2, z;
	int r;
	a_temp = a;
	t1 = r23 * a_temp;
	a1 = (int) t1;
	a2 = a_temp - t23 * a1;

	star_x_temp = (*x);

	t1 = r23 * star_x_temp;
	x1 = (int) t1;
	x2 = star_x_temp - t23 * x1;
	t1 = a1 * x2 + a2 * x1;
	t2 = (int) (r23 * t1);
	z = t1 - t23 * t2;
	t3 = t23 * z + a2 * x2;
	t4 = (int) (r46 * t3);
	star_x_temp = t3 - t46 * t4;
	*x = star_x_temp;
	r = r46 * star_x_temp;

	return r;
}

void vranlc(int n, int *x, int a, int y[]) {

	int star_x_temp, a_temp, y_temp;
	const int r46 = r23 * r23;
	const int t46 = t23 * t23;

	int t1, t2, t3, t4, a1, a2, x1, x2, z;

	int i;
	a_temp = a;

	t1 = r23 * a_temp;
	a1 = (int) t1;
	a2 = a_temp - t23 * a1;

	for (i = 0; i < n; i++) {
		star_x_temp = (*x);

		t1 = r23 * star_x_temp;
		x1 = (int) t1;
		x2 = star_x_temp - t23 * x1;
		t1 = a1 * x2 + a2 * x1;
		t2 = (int) (r23 * t1);
		z = t1 - t23 * t2;
		t3 = t23 * z + a2 * x2;
		t4 = (int) (r46 * t3);

		star_x_temp = t3 - t46 * t4;
		*x = star_x_temp;
		y_temp = r46 * star_x_temp;
		y[i] = y_temp;
	}

	return;
}

int main() {

	int dum[3];
	int i = 0;

	klee_make_symbolic(dum, sizeof(int) * 3, "__arr32__dum");
	klee_make_symbolic(&r23, sizeof(int), "r23");
	klee_make_symbolic(&t23, sizeof(int), "t23");

	klee_track_error(dum, "dum_err");
	klee_track_error(&r23, "r23_err");
	klee_track_error(&t23, "t23_err");

	vranlc(1, &dum[0], dum[1], &dum[2]);
	dum[0] = randlc(&dum[1], dum[2]);
	return 0;
}

