/*
 * sor.c
 * Compile: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g sor.c
 * Run: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision sor.bc
 *
 *  Created on: Oct 27, 2017
 *      Author: himeshi
 */

#define SYMBOLIC
//#define TEST

#ifndef SYMBOLIC

#include <stdio.h>
#include <stdlib.h>
#include "Random.h"

#define SIZE 10

const int TINY_SOR_SIZE = 10;
const int RANDOM_SEED = 101010;

void SOR_execute(int M, int N, double omega, double **G, int num_iterations);
void SOR_execute2(int M, int N, double omega, double G[SIZE][SIZE], int num_iterations);

int main() {
	int N = TINY_SOR_SIZE;
	int cycles = 1;
	Random R = new_Random_seed(RANDOM_SEED);

	double **G = RandomMatrix(N, N, R);
#ifdef TEST
	int i,j;
	double G2[SIZE][SIZE];
	for (i = 0; i < SIZE; ++i) {
		for (j = 0; j < SIZE; ++j) {
			G2[i][j] = G[i][j];
		}
	}
	SOR_execute2(N, N, 1.25, G2, cycles);
	for (i = 0; i < SIZE; ++i) {
		for (j = 0; j < SIZE; ++j) {
			//printf("%f ", G2[i][j]);
		}
	}
#endif
	SOR_execute(N, N, 1.25, G, cycles);

#ifdef TEST
	printf("\n");
	for (i = 0; i < SIZE; ++i) {
		for (j = 0; j < SIZE; ++j) {
			//printf("%f ", G[i][j]);
		}
	}
#endif

	int i,j;
	for (i = 0; i < 10; ++i) {
		for (j = 0; j < 10; ++j) {
			printf("%f, ", G[i][j]);
		}
	}
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
	//printf("\n%f",Gi[1]);
}

void SOR_execute2(int M, int N, double omega, double G[SIZE][SIZE], int num_iterations) {

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

#else
#include <stdlib.h>
#include <stdio.h>
#include "klee/klee.h"

#define TINY_SOR_SIZE 6

void SOR_execute(int M, int N, int omega, int G[TINY_SOR_SIZE][TINY_SOR_SIZE], int num_iterations);

int main() {
	int N = TINY_SOR_SIZE;
	int cycles = 1;
	int omega; //1.25 actually
	int G[TINY_SOR_SIZE][TINY_SOR_SIZE];

	klee_make_symbolic(G, sizeof(int) * 36, "__arr32__G");
	klee_make_symbolic(&omega, sizeof(int), "omega");

	klee_track_error(G, "G_err");
	klee_track_error(&omega, "omega_err");

	SOR_execute(N, N, omega, G, cycles);

	return 0;
}

void SOR_execute(int M, int N, int omega, int G[TINY_SOR_SIZE][TINY_SOR_SIZE], int num_iterations) {

	int omega_over_four = omega / 4;
	int one_minus_omega = 1 - omega;

	klee_bound_error(num_iterations, "num_iterations", 1.0);
	klee_bound_error(M, "M", 1.0);

	/* update interior points*/
	int Mm1 = M - 1;
	int Nm1 = N - 1;
	int p;
	int i;
	int j;
	int *Gi;
	int *Gim1;
	int *Gip1;

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

#endif
