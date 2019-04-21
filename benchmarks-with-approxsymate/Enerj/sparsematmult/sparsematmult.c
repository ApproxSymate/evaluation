/*
 * sparsematmult.c
 *
 */

#include "klee/klee.h"
#include "Random.h"
#include <stdlib.h>

const int SPARSE_SIZE_M = 10;
const int SPARSE_SIZE_nz = 50;

void SparseCompRow_matmult(int M, int *y, int *val, int *row, int *col,
		int *x, int NUM_ITERATIONS);

int main() {

	int N = SPARSE_SIZE_M;
	int nz = SPARSE_SIZE_nz;

	int x[N];
	int y[N];

	int nr = nz / N; /* average number of nonzeros per row  */
	int anz = nr * N; /* _actual_ number of nonzeros         */

	int val[anz];
	int col[nz];
	int row[N + 1];
	int r = 0;
	int cycles = 1;

	row[0] = 0;

	klee_make_symbolic(x, sizeof(int) * 10, "__arr32__x");
	klee_make_symbolic(val, sizeof(int) * 50, "__arr32__val");

	klee_track_error(x, "x_err");
	klee_track_error(val, "val_err");

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

void SparseCompRow_matmult(int M, int *y, int *val, int *row, int *col,
		int *x, int NUM_ITERATIONS) {
	int reps;
	int r;
	int i;

	for (reps = 0; reps < NUM_ITERATIONS; reps++) {

		for (r = 0; r < M; r++) {
			int sum = 0;
			int rowR = row[r];
			int rowRp1 = row[r + 1];
			for (i = rowR; i < rowRp1; i++)
				sum += x[col[i]] * val[i];
			y[r] = sum;
		}
	}
}







