/*
 * sparsematmult.c
 *
 * Compile with: gcc sparsematmult.c Random.c -o sparsematmult
 *
 *  Created on: Jul 25, 2018
 *      Author: himeshi
 */

#include "Random.h"
#include <stdlib.h>
#include <stdio.h>

const int SPARSE_SIZE_M = 10;
const int SPARSE_SIZE_nz = 50;
const int RANDOM_SEED = 101010;

void SparseCompRow_matmult(int M, double *y, double *val, int *row, int *col,
		double *x, int NUM_ITERATIONS);

int main() {

	int N = SPARSE_SIZE_M;
	int nz = SPARSE_SIZE_nz;

	Random R = new_Random_seed(RANDOM_SEED);

	double *x = RandomVector(N, R);
	double *y = (double*) malloc(sizeof(double) * N);

	int nr = nz / N; /* average number of nonzeros per row  */
	int anz = nr * N; /* _actual_ number of nonzeros         */

	double *val = RandomVector(anz, R);
	int *col = (int*) malloc(sizeof(int) * nz);
	int *row = (int*) malloc(sizeof(int) * (N + 1));
	int r = 0;
	int cycles = 1;

/*	for (int i = 0; i < N; ++i) {
		printf("x[%d] = %f\n", i, x[i]);
	}
	for (int i = 0; i < anz; ++i) {
		printf("val[%d] = %f\n", i, val[i]);
	}*/

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
	return 0;
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

