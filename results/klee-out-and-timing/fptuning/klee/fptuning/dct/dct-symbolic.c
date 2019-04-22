/*
 * dct-symbolic.c
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g dct-symbolic.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
 *
 *  Created on: Aug 28, 2018
 *      Author: himeshi
 */
#include <stdio.h>
#include <stdlib.h>
#include "klee/klee.h"

#define FAST_FLOAT int
#define DCTSIZE 2
#define GLOBAL(type) type

#define DCT_FLOAT_SUPPORTED

void jpeg_fdct_float(FAST_FLOAT *);

FAST_FLOAT data[8][8];

FAST_FLOAT workspace[8][8];
int temp1, temp2, temp3, temp4;

int main(int argc, char *argv[]) {
	int i, j;
	int runs;

	klee_make_symbolic(data, sizeof(int) * 64, "__arr32__data");
	klee_track_error(data, "data_err");

	klee_make_symbolic(&temp1, sizeof(int), "temp1");
	klee_make_symbolic(&temp2, sizeof(int), "temp2");
	klee_make_symbolic(&temp3, sizeof(int), "temp3");
	klee_make_symbolic(&temp4, sizeof(int), "temp4");

	klee_track_error(&temp1, "temp1_err");
	klee_track_error(&temp2, "temp2_err");
	klee_track_error(&temp3, "temp3_err");
	klee_track_error(&temp4, "temp4_err");

	FAST_FLOAT workspace_temp, data_temp;
	for (runs = 0; runs < 1; runs++) {
		for (i = 0; i < 8; i++) {
			for (j = 0; j < 8; j++) {
				data_temp = data[i][j];
				workspace_temp = data_temp - 128;
				workspace[i][j] = workspace_temp;
			}
		}
		jpeg_fdct_float((FAST_FLOAT *) workspace);
	}
}

GLOBAL(void) jpeg_fdct_float(FAST_FLOAT * data) {
	FAST_FLOAT tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	FAST_FLOAT tmp10, tmp11, tmp12, tmp13;
	FAST_FLOAT z1, z2, z3, z4, z5, z11, z13;
	FAST_FLOAT *dataptr;

	FAST_FLOAT data_temp;

	int ctr;

	dataptr = data;
	for (ctr = DCTSIZE - 1; ctr >= 0; ctr--) {
		data_temp = dataptr[0];
		tmp0 = data_temp;
		data_temp = dataptr[7];
		tmp0 = tmp0 + data_temp;

		data_temp = dataptr[0];
		tmp7 = data_temp;
		data_temp = dataptr[7];
		tmp7 = tmp7 - data_temp;

		data_temp = dataptr[1];
		tmp1 = data_temp;
		data_temp = dataptr[6];
		tmp1 = tmp1 + data_temp;

		data_temp = dataptr[1];
		tmp6 = data_temp;
		data_temp = dataptr[6];
		tmp6 = tmp6 - data_temp;

		data_temp = dataptr[2];
		tmp2 = data_temp;
		data_temp = dataptr[5];
		tmp2 = tmp2 + data_temp;

		data_temp = dataptr[2];
		tmp5 = data_temp;
		data_temp = dataptr[5];
		tmp5 = tmp5 - data_temp;

		data_temp = dataptr[3];
		tmp3 = data_temp;
		data_temp = dataptr[4];
		tmp3 = tmp3 + data_temp;

		data_temp = dataptr[3];
		tmp4 = data_temp;
		data_temp = dataptr[4];
		tmp4 = tmp4 - data_temp;

		tmp10 = tmp0 + tmp3;
		tmp13 = tmp0 - tmp3;
		tmp11 = tmp1 + tmp2;
		tmp12 = tmp1 - tmp2;

		data_temp = tmp10 + tmp11;
		dataptr[0] = data_temp;

		data_temp = tmp10 - tmp11;
		dataptr[4] = data_temp;

		z1 = (tmp12 + tmp13) * ((FAST_FLOAT) temp1);

		data_temp = tmp13 + z1;
		dataptr[2] = data_temp;

		data_temp = tmp13 - z1;
		dataptr[6] = data_temp;

		tmp10 = tmp4 + tmp5;
		tmp11 = tmp5 + tmp6;
		tmp12 = tmp6 + tmp7;

		z5 = (tmp10 - tmp12) * ((FAST_FLOAT) temp2);
		z2 = ((FAST_FLOAT) temp3) * tmp10 + z5;
		z4 = ((FAST_FLOAT) temp4) * tmp12 + z5;
		z3 = tmp11 * ((FAST_FLOAT) temp1);

		z11 = tmp7 + z3;
		z13 = tmp7 - z3;

		data_temp = z13 + z2;
		dataptr[5] = data_temp;

		data_temp = z13 - z2;
		dataptr[3] = data_temp;

		data_temp = z11 + z4;
		dataptr[1] = data_temp;

		data_temp = z11 - z4;
		dataptr[7] = data_temp;

		dataptr += DCTSIZE;
	}

	dataptr = data;
	for (ctr = DCTSIZE - 1; ctr >= 0; ctr--) {

		data_temp = dataptr[DCTSIZE * 0];
		tmp0 = data_temp;
		data_temp = dataptr[DCTSIZE * 7];
		tmp0 = tmp0 + data_temp;

		data_temp = dataptr[DCTSIZE * 0];
		tmp7 = data_temp;
		data_temp = dataptr[DCTSIZE * 7];
		tmp7 = tmp7 - data_temp;

		data_temp = dataptr[DCTSIZE * 1];
		tmp1 = data_temp;
		data_temp = dataptr[DCTSIZE * 6];
		tmp1 = tmp1 + data_temp;

		data_temp = dataptr[DCTSIZE * 1];
		tmp6 = data_temp;
		data_temp = dataptr[DCTSIZE * 6];
		tmp6 = tmp6 - data_temp;

		data_temp = dataptr[DCTSIZE * 2];
		tmp2 = data_temp;
		data_temp = dataptr[DCTSIZE * 5];
		tmp2 = tmp2 + data_temp;

		data_temp = dataptr[DCTSIZE * 2];
		tmp5 = data_temp;
		data_temp = dataptr[DCTSIZE * 5];
		tmp5 = tmp5 - data_temp;

		data_temp = dataptr[DCTSIZE * 3];
		tmp3 = data_temp;
		data_temp = dataptr[DCTSIZE * 4];
		tmp3 = tmp3 + data_temp;

		data_temp = dataptr[DCTSIZE * 3];
		tmp4 = data_temp;
		data_temp = dataptr[DCTSIZE * 4];
		tmp4 = tmp4 - data_temp;

		tmp10 = tmp0 + tmp3;
		tmp13 = tmp0 - tmp3;
		tmp11 = tmp1 + tmp2;
		tmp12 = tmp1 - tmp2;

		data_temp = tmp10 + tmp11;
		dataptr[DCTSIZE * 0] = data_temp;

		data_temp = tmp10 - tmp11;
		dataptr[DCTSIZE * 4] = data_temp;

		z1 = (tmp12 + tmp13) * ((FAST_FLOAT) temp1);

		data_temp = tmp13 + z1;
		dataptr[DCTSIZE * 2] = data_temp;

		data_temp = tmp13 - z1;
		dataptr[DCTSIZE * 6] = data_temp;

		tmp10 = tmp4 + tmp5;
		tmp11 = tmp5 + tmp6;
		tmp12 = tmp6 + tmp7;

		z5 = (tmp10 - tmp12) * ((FAST_FLOAT) temp2);
		z2 = ((FAST_FLOAT) temp3) * tmp10 + z5;
		z4 = ((FAST_FLOAT) temp4) * tmp12 + z5;
		z3 = tmp11 * ((FAST_FLOAT) temp1);

		z11 = tmp7 + z3;
		z13 = tmp7 - z3;

		data_temp = z13 + z2;
		dataptr[DCTSIZE * 5] = data_temp;

		data_temp = z13 - z2;
		dataptr[DCTSIZE * 3] = data_temp;
		data_temp = z11 + z4;
		dataptr[DCTSIZE * 1] = data_temp;
		data_temp = z11 - z4;
		dataptr[DCTSIZE * 7] = data_temp;

		dataptr++;
	}
}

