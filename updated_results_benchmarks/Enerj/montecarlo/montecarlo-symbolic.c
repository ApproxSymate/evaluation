/*
 * montecarlo-symbolic.c
 *
 * Compile with: clang -I klee/include -emit-llvm -c -g montecarlo-symbolic.c
 * Run with: klee --write-kqueries --precision montecarlo-symbolic.bc
 *
 *  Created on: Jul 5, 2018
 *      Author: himeshi
 */

#include "klee/klee.h"

int MonteCarlo_integrate(int Num_samples);

int main() {
	int cycles = 1;
	int result = MonteCarlo_integrate(cycles);
	return 0;
}

int MonteCarlo_integrate(int Num_samples) {

	//Random R = new_Random_seed(SEED);

	int under_curve = 0;
	int count;

	for (count = 0; count < Num_samples; count++) {
		//double x = Random_nextDouble(R);
		//double y = Random_nextDouble(R);
		int x, y;
		klee_make_symbolic(&x, sizeof(x), "x");
		klee_make_symbolic(&y, sizeof(y), "y");

		klee_track_error(&x, "x_err");
		klee_track_error(&y, "y_err");

		if (x * x + y * y <= 1)
			under_curve++;

	}

	//Random_delete(R);

	return (under_curve / Num_samples) * 4;
}

