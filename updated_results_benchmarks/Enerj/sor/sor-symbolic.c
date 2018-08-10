/*
 * sor-symbolic.c
 *
 * Compile with: clang -I klee/include -emit-llvm -c -g sor-symbolic.c
 * Run with: klee --write-kqueries --precision --scaling sor-symbolic.bc
 *
 *  Created on: Jul 25, 2018
 *      Author: himeshi
 */

#include "klee/klee.h"
#include <string.h>

#define SIZE 3

void SOR_execute(int M, int N, int omega, int G[SIZE][SIZE], int num_iterations);

const int RANDOM_SEED = 101010;

int main() {
	int N = SIZE;
	int cycles = 1;
	int omega;

	int G[SIZE][SIZE];

	klee_make_symbolic(G, sizeof(int) * 9, "__arr32__G");
	klee_make_symbolic(&omega, sizeof(int), "omega");

	klee_track_error(G, "G_err");
	klee_track_error(&omega, "omega_err");

	SOR_execute(N, N, omega, G, cycles);

	return 0;
}

void SOR_execute(int M, int N, int omega, int G[SIZE][SIZE], int num_iterations) {

	int omega_over_four = omega / 4;
	int one_minus_omega = 1 - omega;

	/* update interior points */

	klee_bound_error(**G, "G", 1.0);

	int Mm1 = M - 1;
	int Nm1 = N - 1;
	int p;
	int i;
	int j;
	int Gi[SIZE];
	int Gim1[SIZE];
	int Gip1[SIZE];

	for (p = 0; p < num_iterations; p++) {
		for (i = 1; i < Mm1; i++) {
			memcpy(Gi, G[i], sizeof(int) * SIZE);
			memcpy(Gim1, G[i - 1], sizeof(int) * SIZE);
			memcpy(Gip1, G[i + 1], sizeof(int) * SIZE);
			for (j = 1; j < Nm1; j++)
				Gi[j] = omega_over_four
						* (Gim1[j] + Gip1[j] + Gi[j - 1] + Gi[j + 1])
						+ one_minus_omega * Gi[j];
		}
	}
}

