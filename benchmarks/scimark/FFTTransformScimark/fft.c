/*
 * fft.c
 *
 *  Created on: Oct 28, 2017
 *      Author: himeshi
 *
 *  Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g fft.c
 *  Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --write-smt2s fft.bc
 */

#define SYMBOLIC

#ifndef SYMBOLIC

#include "Random.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define PI  3.1415926535897932

void FFT_transform(int N, double *data);
void FFT_transform_internal(int N, double *data, int direction);
void FFT_bitreverse(int N, double *data);
int int_log2(int n);
void FFT_inverse(int N, double *data);

int main() {
	int N = 16;
	int twoN = 2 * N;
	const int RANDOM_SEED = 101010;

	Random R = new_Random_seed(RANDOM_SEED);
	double *x = RandomVector(twoN, R);
	/*int i;
	 for (i = 0; i < twoN; ++i) {
	 printf("x[%d] = %f\n", i, x[i]);
	 }*/
	FFT_transform(twoN, x);
	FFT_inverse(twoN, x);

	return 0;
}

void FFT_transform(int N, double *data) {
	FFT_transform_internal(N, data, -1);
}

void FFT_transform_internal(int N, double *data, int direction) {
	int n = N / 2;
	int bit = 0;
	int logn;
	int dual = 1;

	if (n == 1)
	return; /* Identity operation! */
	logn = int_log2(n);

	if (N == 0)
	return;

	/* bit reverse the input data for decimation in time algorithm */
	FFT_bitreverse(N, data);

	/* apply fft recursion */
	/* this loop executed int_log2(N) times */
	for (bit = 0; bit < logn; bit++, dual *= 2) {
		double w_real = 1.0;
		double w_imag = 0.0;
		int a;
		int b;

		double theta = 2.0 * direction * PI / (2.0 * (double) dual);
		double s = sin(theta);
		double t = sin(theta / 2.0);
		double s2 = 2.0 * t * t;

		for (a = 0, b = 0; b < n; b += 2 * dual) {
			int i = 2 * b;
			int j = 2 * (b + dual);

			double wd_real = data[j];
			double wd_imag = data[j + 1];

			data[j] = data[i] - wd_real;
			data[j + 1] = data[i + 1] - wd_imag;
			data[i] += wd_real;
			data[i + 1] += wd_imag;
		}

		/* a = 1 .. (dual-1) */
		for (a = 1; a < dual; a++) {
			/* trignometric recurrence for w-> exp(i theta) w */
			{
				double tmp_real = w_real - s * w_imag - s2 * w_real;
				double tmp_imag = w_imag + s * w_real - s2 * w_imag;
				w_real = tmp_real;
				w_imag = tmp_imag;
			}
			for (b = 0; b < n; b += 2 * dual) {
				int i = 2 * (b + a);
				int j = 2 * (b + a + dual);

				double z1_real = data[j];
				double z1_imag = data[j + 1];

				double wd_real = w_real * z1_real - w_imag * z1_imag;
				double wd_imag = w_real * z1_imag + w_imag * z1_real;

				data[j] = data[i] - wd_real;
				data[j + 1] = data[i + 1] - wd_imag;
				data[i] += wd_real;
				data[i + 1] += wd_imag;
			}
		}
	}
}

int int_log2(int n) {
	int k = 1;
	int log = 0;
	for (/*k=1*/; k < n; k *= 2, log++)
	;
	if (n != (1 << log)) {
		printf("FFT: Data length is not a power of 2!: %d ", n);
		exit(1);
	}
	return log;
}

void FFT_bitreverse(int N, double *data) {
	/* This is the Goldrader bit-reversal algorithm */
	int n = N / 2;
	int nm1 = n - 1;
	int i = 0;
	int j = 0;
	for (; i < nm1; i++) {

		/*int ii = 2*i; */
		int ii = i << 1;

		/*int jj = 2*j; */
		int jj = j << 1;

		/* int k = n / 2 ; */
		int k = n >> 1;

		if (i < j) {
			double tmp_real = data[ii];
			double tmp_imag = data[ii + 1];
			data[ii] = data[jj];
			data[ii + 1] = data[jj + 1];
			data[jj] = tmp_real;
			data[jj + 1] = tmp_imag;
		}

		while (k <= j) {
			/*j = j - k ; */
			j -= k;

			/*k = k / 2 ;  */
			k >>= 1;
		}
		j += k;
	}
}

void FFT_inverse(int N, double *data)
{
	int n = N/2;
	double norm = 0.0;
	int i=0;
	FFT_transform_internal(N, data, +1);

	/* Normalize */

	norm=1/((double) n);
	for(i=0; i<N; i++)
	data[i] *= norm;

}

#else

#include <stdio.h>
#include <stdlib.h>
#include "klee/klee.h"

int PI;
//#define M_TAU  6.283185307179586232
int M_TAU;

void FFT_transform(int N, int data[8]);
void FFT_transform_internal(int N, int data[8], int direction);
void FFT_bitreverse(int N, int data[8]);
int int_log2(int n);
void FFT_inverse(int N, int data[8]);
int sin_func(int x);
int rrsin(int x);

int main() {
	//int N = 16;
	int N = 4;
	int twoN = 2 * N;
	int x[8];

	klee_make_symbolic(x, sizeof(int) * 8, "__arr32__x");

	klee_track_error(x, "x_err");

	FFT_transform(twoN, x);
	FFT_inverse(twoN, x);

	return 0;
}

void FFT_transform(int N, int data[8]) {
	FFT_transform_internal(N, data, -1);
}

void FFT_transform_internal(int N, int data[8], int direction) {
	int n = N / 2;
	int bit = 0;
	int logn;
	int dual = 1;

	if (n == 1)
		return; /* Identity operation! */
	logn = int_log2(n);

	if (N == 0)
		return;

	/* bit reverse the input data for decimation in time algorithm */
	FFT_bitreverse(N, data);

	/* apply fft recursion */
	/* this loop executed int_log2(N) times */
	for (bit = 0; bit < logn; bit++, dual *= 2) {
		int w_real = 1;
		int w_imag = 0;
		int a;
		int b;

		int theta = 2 * direction * (314 / 100) / (2 * (int) dual);
		klee_bound_error(direction, "direction", 1.0);
		int s = sin_func(theta);
		int t = sin_func(theta / 2);
		int s2 = 2 * t * t;

		for (a = 0, b = 0; b < n; b += 2 * dual) {
			int i = 2 * b;
			int j = 2 * (b + dual);

			int wd_real = data[j];
			int wd_imag = data[j + 1];

			data[j] = data[i] - wd_real;
			data[j + 1] = data[i + 1] - wd_imag;
			data[i] += wd_real;
			data[i + 1] += wd_imag;
		}

		/* a = 1 .. (dual-1) */
		for (a = 1; a < dual; a++) {
			/* trignometric recurrence for w-> exp(i theta) w */
			{
				int tmp_real = w_real - s * w_imag - s2 * w_real;
				int tmp_imag = w_imag + s * w_real - s2 * w_imag;
				w_real = tmp_real;
				w_imag = tmp_imag;
			}
			for (b = 0; b < n; b += 2 * dual) {
				int i = 2 * (b + a);
				int j = 2 * (b + a + dual);

				int z1_real = data[j];
				int z1_imag = data[j + 1];

				int wd_real = w_real * z1_real - w_imag * z1_imag;
				int wd_imag = w_real * z1_imag + w_imag * z1_real;

				data[j] = data[i] - wd_real;
				data[j + 1] = data[i + 1] - wd_imag;
				data[i] += wd_real;
				data[i + 1] += wd_imag;
			}
		}

	}

}

int int_log2(int n) {
	int k = 1;
	int log = 0;
	int temp = 1;
	for (/*k=1*/; k < n; k *= 2, log++) {
		temp *= 2;
	}

	if (n != temp) {
		//printf("FFT: Data length is not a power of 2!: %d ", n);
		exit(1);
	}
	return log;
}

void FFT_bitreverse(int N, int data[8]) {
	/* This is the Goldrader bit-reversal algorithm */
	int n = N / 2;
	int nm1 = n - 1;
	int i = 0;
	int j = 0;
	for (; i < nm1; i++) {

		/*int ii = 2*i; */
		int ii = i * 2;

		/*int jj = 2*j; */
		int jj = j * 2;

		/* int k = n / 2 ; */
		int k = n / 2;

		if (i < j && jj < N) {
			int tmp_real = data[ii];
			int tmp_imag = data[ii + 1];
			data[ii] = data[jj];
			data[ii + 1] = data[jj + 1];
			data[jj] = tmp_real;
			data[jj + 1] = tmp_imag;
		}

		while (k <= j) {
			/*j = j - k ; */
			j -= k;

			/*k = k / 2 ;  */
			k = k / 2;
		}
		j += k;
	}
}

void FFT_inverse(int N, int data[8]) {
	int n = N / 2;
	int norm = 0;
	int i = 0;
	FFT_transform_internal(N, data, +1);

	/* Normalize */

	norm = 1 / ((int) n);
	for (i = 0; i < N; i++)
		data[i] *= norm;

	klee_bound_error(N, "N", 1.0);

}

int rrsin(int x) {
	int i;
	int a = 1, xx = x * x;
	for (i = 21; 2 < i; i -= 2)
		a = 1 - a * xx / (i * (i - 1));
	return x * a;
}

int sin_func(int x) {
	int n = x / (6283 / 1000);
	return rrsin(x - n * (6283 / 1000));
}

#endif

