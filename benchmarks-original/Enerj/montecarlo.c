/*
 * montecarlo.c
 *
 * gcc montecarlo.c Random.c -o montecarlo
 *
 *  Created on: Jul 4, 2018
 *      Author: himeshi
 */
#include "Random.h"
#include <stdlib.h>
#include <stdio.h>

static const int SEED = 113;

double MonteCarlo_integrate(int Num_samples);

int main() {
	int cycles = 1492;
	double result = MonteCarlo_integrate(cycles);
	printf("%.10f\n", result);
	return 0;
}

double MonteCarlo_integrate(int Num_samples) {

	Random R = new_Random_seed(SEED);

	int under_curve = 0;
	int count;

	for (count = 0; count < Num_samples; count++) {
		double x = Random_nextDouble(R);
		double y = Random_nextDouble(R);

		//printf("%f %f\n", x, y);

		if (x * x + y * y <= 1.0)
			under_curve++;

	}

	Random_delete(R);

	return ((double) under_curve / Num_samples) * 4.0;
}



