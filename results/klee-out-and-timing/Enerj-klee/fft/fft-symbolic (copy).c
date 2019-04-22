/*
 * fft-symbolic.c
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g fft-symbolic.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
 *
 *  Created on: Jul 19, 2018
 *      Author: himeshi
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "klee/klee.h"

void FFT_transform(int N, int *data);
void FFT_inverse(int N, int *data);
void FFT_bitreverse(int N, int *data);
int int_log2(int n);

int PI;

int main() {
	int N = 8;
	int twoN = N * 2;
	int x[twoN];

	klee_make_symbolic(x, sizeof(int) * 16, "__arr32__x");
	klee_track_error(x, "x_err");

	klee_make_symbolic(&PI, sizeof(PI), "PI");
	klee_track_error(&PI, "PI_err");

	FFT_transform(twoN, x); /* forward transform */
	FFT_inverse(twoN, x); /* backward transform */

	return 0;
}

int int_log2(int n) {
	int k = 1;
	int log = 0;
	for (/*k=1*/; k < n; k *= 2) {
		log += 1;
	}

	/*if (n != (1 << log)) {
	 printf("FFT: Data length is not a power of 2!: %d ", n);
	 exit(1);
	 }*/
	return log;
}

void FFT_transform_internal(int N, int *data, int direction) {
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
	for (bit = 0; bit < logn; bit++) {
		int w_real = 1;
		int w_imag = 0;
		int a;
		int b;

		int theta = 2 * direction * PI / (2 * dual);
		int s = sin(theta);
		int t = sin(theta / 2);
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
		dual *= 2;
	}
}

void FFT_bitreverse(int N, int *data) {
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
			k >>= 1;
		}
		j += k;
	}
}

void FFT_transform(int N, int *data) {
	FFT_transform_internal(N, data, -1);
}

void FFT_inverse(int N, int *data) {
	int n = N / 2;
	int norm = 0;
	int i = 0;
	FFT_transform_internal(N, data, +1);

	/* Normalize */

	norm = 1 / ((int) n);
	for (i = 0; i < N; i++)
		data[i] *= norm;

}

