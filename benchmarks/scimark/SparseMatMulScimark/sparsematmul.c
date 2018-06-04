/*
 * sparsematmul.c
 *
 *  Created on: Oct 28, 2017
 *      Author: himeshi
 */

#define SYMBOLIC

#ifndef SYMBOLIC

#include "Random.h"
#include <stdlib.h>
#include <stdio.h>

void SparseCompRow_matmult(int M, double *y, double *val, int *row, int *col,
		double *x, int NUM_ITERATIONS);

int main() {
	int N = 10;
	int nz = 50;
	int RANDOM_SEED = 101010;

	Random R = new_Random_seed(RANDOM_SEED);
	double *x = RandomVector(N, R);
	double *y = (double*) malloc(sizeof(double) * N);
	int nr = nz / N; /* average number of nonzeros per row  */
	int anz = nr * N; /* _actual_ number of nonzeros         */

	double *val = RandomVector(anz, R);
	int i;
	for (i = 0; i < N; ++i) {
		printf("%f, ", x[i]);
	}

	int *col = (int*) malloc(sizeof(int) * nz);
	int *row = (int*) malloc(sizeof(int) * (N + 1));
	int r = 0;
	int cycles = 1;

	row[0] = 0;
	for (r = 0; r < N; r++) {
		/* initialize elements for row r */

		int rowr = row[r];
		int step = r / nr;
		int i = 0;

		row[r + 1] = rowr + nr;
		if (step < 1)
			step = 1; /* take at least unit steps */

		for (i = 0; i < nr; i++)
			col[rowr + i] = i * step;

	}

	SparseCompRow_matmult(N, y, val, row, col, x, cycles);
}

void SparseCompRow_matmult(int M, double *y, double *val, int *row, int *col,
		double *x, int NUM_ITERATIONS) {
	int reps;
	int r;
	int i;

	for (reps = 0; reps < NUM_ITERATIONS; reps++) {

		for (r = 0; r < M; r++) {
			double sum = 0.0;
			int rowR = row[r];
			int rowRp1 = row[r + 1];
			for (i = rowR; i < rowRp1; i++)
				sum += x[col[i]] * val[i];
			y[r] = sum;
		}
	}
}

#else

/*
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g sparsematmul.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision sparsematmul.bc
 */

#include <klee/klee.h>

void SparseCompRow_matmult(int M, int *y, int *val, int *row, int *col, int *x, int NUM_ITERATIONS);

int main () {

	int N = 10;
	int nz = 50;
	int x[N], y[N];

	int nr = nz / N; /* average number of nonzeros per row  (5)*/
	int anz = nr * N; /* _actual_ number of nonzeros        (50)*/

	int val[anz];
	int col[nz];
	int row[N + 1];

	int r = 0;
	int cycles = 1;
	row[0] = 0;

	//make the declarations made so far, symbolic
	klee_make_symbolic(x, sizeof(int) * 10, "__arr32__x");
	klee_make_symbolic(val, sizeof(int) * 50, "__arr32__val");

	klee_track_error(x, "x_err");
	klee_track_error(val, "val_err");

	int rowr;
	int step;
	for (r = 0; r < N; r++) {
		rowr = row[r];
		step = r / nr;
		int i = 0;

		row[r + 1] = rowr + nr;
		if (step < 1)
		step = 1; /* take at least unit steps */

		for (i = 0; i < nr; i++)
			col[rowr + i] = i * step;
	}

	SparseCompRow_matmult(N, y, val, row, col, x, cycles);

	return 0;
}

void SparseCompRow_matmult(int M, int *y, int *val, int *row, int *col,
		int *x, int NUM_ITERATIONS) {
	int reps;
	int r;
	int i;
	int sum;
	int rowR;
	int rowRp1;

	for (reps = 0; reps < NUM_ITERATIONS; reps++) {

		for (r = 0; r < M; r++) {
			sum = 0;
			rowR = row[r];
			rowRp1 = row[r + 1];
			for (i = rowR; i < rowRp1; i++)
			sum += x[col[i]] * val[i];
			y[r] = sum;
		}
	}
}

#endif

