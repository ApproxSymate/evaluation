/*
 * sor.c
 *
 * Compile with: gcc sor.c Random.c -o sor
 *
 *  Created on: Jul 25, 2018
 *      Author: himeshi
 */

#include <stdio.h>
#include "Random.h"

void SOR_execute(int M, int N, double omega, double **G, int num_iterations);

const int RANDOM_SEED = 101010;

int main() {
	int N = 10;
	int cycles = 1;
	Random R = new_Random_seed(RANDOM_SEED);

	double **G = RandomMatrix(N, N, R);
	double result = 0.0;

	/*for (int i = 0; i < 10; ++i) {
		for (int j = 0; j < 10; ++j) {
			printf("G[%d] = %f\n", (i * 10 + j), G[i][j]);
		}
	}*/

	SOR_execute(N, N, 1.25, G, cycles);

	return 0;
}

void SOR_execute(int M, int N, double omega, double **G, int num_iterations) {

	double omega_over_four = omega * 0.25;
	double one_minus_omega = 1.0 - omega;

	/* update interior points */

	int Mm1 = M - 1;
	int Nm1 = N - 1;
	int p;
	int i;
	int j;
	double *Gi;
	double *Gim1;
	double *Gip1;

	for (p = 0; p < num_iterations; p++) {
		for (i = 1; i < Mm1; i++) {
			Gi = G[i];
			Gim1 = G[i - 1];
			Gip1 = G[i + 1];
			for (j = 1; j < Nm1; j++)
				Gi[j] = omega_over_four
						* (Gim1[j] + Gip1[j] + Gi[j - 1] + Gi[j + 1])
						+ one_minus_omega * Gi[j];
		}
	}
}

