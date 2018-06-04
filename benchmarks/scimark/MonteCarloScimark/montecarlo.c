/*
 * montecarlo.c
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g montecarlo.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo.bc
 *  Created on: Oct 28, 2017
 *      Author: himeshi
 */

#define SYMBOLIC

#ifndef SYMBOLIC

#include "Random.h"
#include <stdio.h>

#define SEED 113

double MonteCarlo_integrate(int Num_samples);

int main() {
	int cycles = 1492;
	MonteCarlo_integrate(cycles);
	return 0;
}

double MonteCarlo_integrate(int Num_samples) {

	Random R = new_Random_seed(SEED);

	int under_curve = 0;
	int count;

	for (count = 0; count < Num_samples; count++) {
		double x = Random_nextDouble(R);
		double y = Random_nextDouble(R);

		if (x * x + y * y <= 1.0)
			under_curve++;
		printf("%f, %f\n", x, y);
	}

	Random_delete(R);

	return ((double) under_curve / Num_samples) * 4.0;
}

#else

/*
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g montecarlo.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo.bc
 */

#include "klee/klee.h"

int main() {

	int under_curve = 0;
	int count;
	int result;

	int x[3];
	int y[3];
	int Num_samples = 3;

	klee_make_symbolic(x, sizeof(int) * 3, "__arr32__x");
	klee_make_symbolic(y, sizeof(int) * 3, "__arr32__y");

	klee_track_error(&x, "x_err");
	klee_track_error(&y, "y_err");

	for (count = 0; count < Num_samples; count++) {

		if (x[count] * x[count] + y[count] * y[count] <= 1)
		under_curve++;

	}

	result = (under_curve / Num_samples) * 4;

	/*klee_bound_error(under_curve, "under_curve", 1.0);
	klee_bound_error(x, "x", 1.0);
	klee_bound_error(y, "y", 1.0);
	klee_bound_error(result, "result", 1.0);*/

	return 0;
}
#endif

