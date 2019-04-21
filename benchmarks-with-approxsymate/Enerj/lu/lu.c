/*
 * lu.c
 *
 */

#include "klee/klee.h"
#include <string.h>

#define SIZE 2

int LU_factor(int M, int N, int A[SIZE][SIZE], int *pivot);
void Array2D_double_copy(int M, int N, int B[SIZE][SIZE], int A[SIZE][SIZE]);
int abs(int x);

int main() {

	int cycles = 1;
	int N = SIZE;
	int A[SIZE][SIZE];
	int lu[SIZE][SIZE];
	int pivot[SIZE];

	klee_make_symbolic(A, sizeof(int) * 4, "__arr32__A");

	klee_track_error(A, "A_err");

	for (int i = 0; i < cycles; i++) {
		Array2D_double_copy(N, N, lu, A);
		klee_bound_error(**lu, "lu", 1.0);
		klee_bound_error(*pivot, "pivot", 1.0);
		LU_factor(N, N, lu, pivot);
	}

	return 0;
}

int LU_factor(int M, int N, int A[SIZE][SIZE], int *pivot) {

	int minMN = M < N ? M : N;
	int j = 0;

	for (j = 0; j < minMN; j++) {
		/* find pivot in column j and  test for singularity. */

		int jp = j;
		int i;

		int t = abs(A[j][j]);
		for (i = j + 1; i < M; i++) {
			int ab = abs(A[i][j]);
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

		int tA[SIZE];
		if (jp != j) {
			/* swap rows j and jp */
			memcpy(tA, A[j], sizeof(int) * SIZE);
			memcpy(A[j], A[jp], sizeof(int) * SIZE);
			memcpy(A[jp], tA, sizeof(int) * SIZE);
		}

		if (j < M - 1) /* compute elements j+1:M of jth column  */
		{
			/* note A(j,j), was A(jp,p) previously which was */
			/* guarranteed not to be zero (Label #1)         */

			int recp = 1 / A[j][j];
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
				int *Aii = A[ii];
				int *Aj = A[j];
				int AiiJ = Aii[j];
				int jj;
				for (jj = j + 1; jj < N; jj++)
					Aii[jj] -= AiiJ * Aj[jj];

			}
		}
	}

	return 0;
}

void Array2D_double_copy(int M, int N, int B[SIZE][SIZE], int A[SIZE][SIZE]) {

	int remainder = N & 3; /* N mod 4; */
	int i = 0;
	int j = 0;

	for (i = 0; i < M; i++) {
		int *Bi = B[i];
		int *Ai = A[i];
		for (j = 0; j < remainder; j++)
			Bi[j] = Ai[j];
		for (j = remainder; j < N; j += 4) {
			int t = Ai[j];
			Bi[j] = Ai[j];
			Bi[j + 1] = Ai[j + 1];
			Bi[j + 2] = Ai[j + 2];
			Bi[j + 3] = Ai[j + 3];
		}
	}
}

int abs(int x) {
	if (x < 0)
		return -x;
	else
		return x;
}

