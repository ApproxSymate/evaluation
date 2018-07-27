/*
 * lu.c
 *
 *  Created on: Oct 28, 2017
 *      Author: himeshi
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g lu.c
 * Note: run without --posix-runtime --allow-external-sym-calls
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --write-smt2s --precision --posix-runtime --allow-external-sym-calls lu.bc
 */

#define SYMBOLIC

#ifndef SYMBOLIC

#include "Random.h"
#include "array.h"
#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int LU_factor(int M, int N, double **A, int *pivot);

int main() {
	double **A;
	double **lu;
	int *pivot;

	int N = 100;
	const int RANDOM_SEED = 101010;
	Random R = new_Random_seed(RANDOM_SEED);

	A = RandomMatrix(N, N, R);
	lu = new_Array2D_double(N, N);
	pivot = (int *) malloc(N * sizeof(int));
	Array2D_double_copy(N, N, lu, A);

	/*printf("%f, ", lu[0][0]);
	printf("%f, ", lu[0][1]);
	printf("%f, ", lu[0][2]);
	printf("%f, ", lu[1][0]);
	printf("%f, ", lu[1][1]);
	printf("%f, ", lu[1][2]);
	printf("%f, ", lu[2][0]);
	printf("%f, ", lu[2][1]);
	printf("%f, ", lu[2][2]);*/

	LU_factor(N, N, lu, pivot);

	return 0;
}

int LU_factor(int M, int N, double **A, int *pivot) {

	int minMN = M < N ? M : N;
	int j = 0;

	for (j = 0; j < minMN; j++) {
		/* find pivot in column j and  test for singularity. */

		int jp = j;
		int i;

		double t = fabs(A[j][j]);
		for (i = j + 1; i < M; i++) {
			double ab = fabs(A[i][j]);
			if (ab > t) {
				jp = i;
				t = ab;
			}
		}

		pivot[j] = jp;

		/* jp now has the index of maximum element  */
		/* of column j, below the diagonal          */

		if (A[jp][j] == 0)
		return 1; /* factorization failed because of zero pivot */

		if (jp != j) {
			/* swap rows j and jp */
			double *tA = A[j];
			A[j] = A[jp];
			A[jp] = tA;
		}

		if (j < M - 1) /* compute elements j+1:M of jth column  */
		{
			/* note A(j,j), was A(jp,p) previously which was */
			/* guarranteed not to be zero (Label #1)         */

			double recp = 1.0 / A[j][j];
			int k;
			for (k = j + 1; k < M; k++)
			A[k][j] *= recp;
		}

		if (j < minMN - 1) {
			/* rank-1 update to trailing submatrix:   E = E - x*y; */
			/* E is the region A(j+1:M, j+1:N) */
			/* x is the column vector A(j+1:M,j) */
			/* y is row vector A(j,j+1:N)        */

			int ii;
			for (ii = j + 1; ii < M; ii++) {
				double *Aii = A[ii];
				double *Aj = A[j];
				double AiiJ = Aii[j];
				int jj;
				for (jj = j + 1; jj < N; jj++)
				Aii[jj] -= AiiJ * Aj[jj];

			}
		}
	}

	return 0;
}

#else

#include <stdlib.h>
#include <math.h>
#include "klee/klee.h"

#define SIZE 3

int LU_factor(int M, int N, int A[SIZE][SIZE], int *pivot);
int absolute(int x);

int main(int argc, char *argv[]) {
	int N = SIZE;
	int pivot[N];
	int lu[SIZE][SIZE];

	klee_make_symbolic(lu, sizeof(int) * 9, "__arr32__lu");

	klee_track_error(lu, "lu_err");
	klee_assume(lu[0][0] != 0);
	klee_assume(lu[0][1] != 0);
	//klee_assume(lu[0][2] != 0);
	klee_assume(lu[1][0] != 0);
	klee_assume(lu[1][1] != 0);/*
	klee_assume(lu[1][2] != 0);
	klee_assume(lu[2][0] != 0);
	klee_assume(lu[2][1] != 0);
	klee_assume(lu[2][2] != 0);*/

	LU_factor(N, N, lu, pivot);

	return 0;
}

int LU_factor(int M, int N, int A[SIZE][SIZE], int *pivot) {

	int minMN = M < N ? M : N;
	int j = 0;
	int jp;
	int t;
	int ab;
	int recp;
	int AiiJ;
	int tA;
	int *Aii;
	int *Aj;

	for (j = 0; j < minMN; j++) {
		/* find pivot in column j and  test for singularity. */

		jp = j;
		int i;

		t = absolute(A[j][j]);
		for (i = j + 1; i < M; i++) {
			ab = absolute(A[i][j]);
			if (ab > t) {
				jp = i;
				t = ab;
			}
		}

		pivot[j] = jp;

		/* jp now has the index of maximum element  */
		/* of column j, below the diagonal          */

		if (A[jp][j] == 0)
			return 1; /* factorization failed because of zero pivot */

		if (jp != j) {
			/*	 swap rows j and jp
			 int *tA = A[j];
			 A[j] = A[jp];
			 A[jp] = tA;
			 //replacing the swapping
			 int count;
			 for (count = 0; count < SIZE; count++) {
			 tA = A[j][count];
			 A[j][count] = A[jp][count];
			 A[jp][count] = tA;
			 }
			 int **temp = A[0][0];
			 int *tA;
			 tA = A[j];
			 &A[j] = &A[jp];
			 &A[jp] = tA;*/
		/*	int *tA = &A[j][0];
			A[j][0] = A[jp][0];
			A[jp][0] = *tA;*/
			int count;
			int *tA;
			for (count = 0; count < SIZE; count++) {
				*tA = A[j][count];
				A[j][count] = A[jp][count];
				A[jp][count] = *tA;
			}

			klee_bound_error(*tA, "tA", 1.0);
		}

		if (j < M - 1) /* compute elements j+1:M of jth column  */
		{
			/* note A(j,j), was A(jp,p) previously which was */
			/* guarranteed not to be zero (Label #1)         */

			recp = 1 / A[j][j];
			int k;
			for (k = j + 1; k < M; k++)
				A[k][j] *= recp;
		}

		if (j < minMN - 1) {
			/* rank-1 update to trailing submatrix:   E = E - x*y; */
			/* E is the region A(j+1:M, j+1:N) */
			/* x is the column vector A(j+1:M,j) */
			/* y is row vector A(j,j+1:N)        */

			int ii;
			for (ii = j + 1; ii < M; ii++) {
				Aii = A[ii];
				Aj = A[j];
				AiiJ = Aii[j];
				klee_bound_error(AiiJ, "AiiJ", 1.0);
				int jj;
				for (jj = j + 1; jj < N; jj++)
					Aii[jj] -= AiiJ * Aj[jj];

			}
		}
	}

	klee_bound_error(A[0][0], "A[0][0]", 1.0);
	klee_bound_error(M, "M", 1.0);

	return 0;
}

int absolute(int x) {
	if (x >= 0)
		return x;
	else
		return -x;
}

#endif

