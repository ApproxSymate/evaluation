/*
 * lu.c
 *
 * Compile with: gcc lu.c Random.c array.c -o lu
 *
 *  Created on: Jul 4, 2018
 *      Author: himeshi
 */

#include "array.h"
#include "Random.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int LU_factor(int M, int N, double **A, int *pivot);

int main() {
	double **A = NULL;
	double **lu = NULL;
	int *pivot = NULL;

	int cycles = 1;
	int N = 5;
	const int RANDOM_SEED = 101010;

	Random R = new_Random_seed(RANDOM_SEED);
	if ((A = RandomMatrix(N, N, R)) == NULL)
		exit(1);
	if ((lu = new_Array2D_double(N, N)) == NULL)
		exit(1);
	if ((pivot = (int *) malloc(N * sizeof(int))) == NULL)
		exit(1);

	/*for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; ++j) {
			printf("A[%d] = %f\n", i * N + j, A[i][j]);
		}
	}*/

	for (int i = 0; i < cycles; i++) {
		Array2D_double_copy(N, N, lu, A);
		LU_factor(N, N, lu, pivot);
	}

	free(pivot);
	Array2D_double_delete(N, N, lu);
	Array2D_double_delete(N, N, A);

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

