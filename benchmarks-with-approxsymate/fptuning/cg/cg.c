/*
 * cg.c
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "klee/klee.h"

typedef enum {
	false, true
} logical;
typedef struct {
	int real;
	int imag;
} dcomplex;

#define min(x,y)    ((x) < (y) ? (x) : (y))
#define max(x,y)    ((x) > (y) ? (x) : (y))

#define NZ    (NA*(NONZER+1)*(NONZER+1))
#define NAZ   (NA*(NONZER+1))

#define T_init        0
#define T_bench       1
#define T_conj_grad   2
#define T_last        3

#define NA      4
#define NONZER  1
#define NITER   1
#define SHIFT   1

static int colidx[NZ];
static int rowstr[NA + 1];
static int iv[NA];
static int arow[NA];
static int acol[NAZ];

static int aelt[NAZ];
static int a[NZ];
static int x[NA + 2];
static int z[NA + 2];
static int p[NA + 2];
static int q[NA + 2];
static int r[NA + 2];

static int naa;
static int nzz;
static int firstrow;
static int lastrow;
static int firstcol;
static int lastcol;

static void conj_grad(int colidx[], int rowstr[], int x[], int z[], int a[],
		int p[], int q[], int r[], int *rnorm);

int main(int argc, char *argv[]) {
	int i, j, k, it;

	int zeta;
	int rnorm;
	int norm_temp1, norm_temp2;

	int mflops, tmax;
	char Class;
	logical verified;
	int zeta_verify_value, epsilon, err;

	firstrow = 0;
	lastrow = NA - 1;
	firstcol = 0;
	lastcol = NA - 1;

	naa = NA;
	nzz = NZ;

	rowstr[0] = 0;
	rowstr[1] = 3;
	rowstr[2] = 5;
	rowstr[3] = 8;
	rowstr[4] = 10;

	colidx[0] = 0;
	colidx[1] = 1;
	colidx[2] = 2;
	colidx[3] = 0;
	colidx[4] = 1;
	colidx[5] = 0;
	colidx[6] = 2;
	colidx[7] = 3;
	colidx[8] = 2;
	colidx[9] = 3;
	colidx[10] = -1;
	colidx[11] = -1;
	colidx[12] = 2;
	colidx[13] = 3;
	colidx[14] = -1;
	colidx[15] = -1;

	arow[0] = 2;
	arow[1] = 2;
	arow[2] = 2;
	arow[3] = 2;

	acol[0] = 2;
	acol[1] = 0;
	acol[2] = 0;
	acol[3] = 1;
	acol[4] = 3;
	acol[5] = 2;
	acol[6] = 2;
	acol[7] = 3;

	iv[0] = 1;
	iv[1] = 1;
	iv[2] = 4;
	iv[3] = 6;

	klee_make_symbolic(a, sizeof(int) * 16, "__arr32__a");
	klee_make_symbolic(aelt, sizeof(int) * 8, "__arr32__aelt");

	klee_track_error(a, "a_err");
	klee_track_error(aelt, "aelt_err");

	for (j = 0; j < lastrow - firstrow + 1; j++) {
		for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
			colidx[k] = colidx[k] - firstcol;
		}
	}

	for (i = 0; i < NA + 1; i++) {
		x[i] = 1;
	}
	for (j = 0; j < lastcol - firstcol + 1; j++) {
		q[j] = 0;
		z[j] = 0;
		r[j] = 0;
		p[j] = 0;
	}

	zeta = 0;

	for (it = 1; it <= 1; it++) {

		conj_grad(colidx, rowstr, x, z, a, p, q, r, &rnorm);

		norm_temp1 = 0;
		norm_temp2 = 0;
		for (j = 0; j < lastcol - firstcol + 1; j++) {
			norm_temp1 = norm_temp1 + x[j] * z[j];
			norm_temp2 = norm_temp2 + z[j] * z[j];
		}

		int temp = sqrt(norm_temp2);
		norm_temp2 = 1 / temp;

		for (j = 0; j < lastcol - firstcol + 1; j++) {
			x[j] = norm_temp2 * z[j];
		}
	}

	return 0;
}

static void conj_grad(int colidx[], int rowstr[], int x[], int z[], int a[],
		int p[], int q[], int r[], int *rnorm) {
	int j, k;
	int cgit, cgitmax = 1;
	int d, sum, rho, rho0, alpha, beta;

	rho = 0;

	for (j = 0; j < naa + 1; j++) {
		q[j] = 0;
		z[j] = 0;
		r[j] = x[j];
		p[j] = r[j];
	}

	for (j = 0; j < lastcol - firstcol + 1; j++) {
		rho = rho + r[j] * r[j];
	}

	for (cgit = 1; cgit <= cgitmax; cgit++) {
		for (j = 0; j < lastrow - firstrow + 1; j++) {
			sum = 0;
			for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
				sum = sum + a[k] * p[colidx[k]];
			}
			q[j] = sum;
		}

		d = 0;
		for (j = 0; j < lastcol - firstcol + 1; j++) {
			d = d + p[j] * q[j];
		}

		klee_assume(d != 0);
		alpha = rho / d;

		rho0 = rho;

		rho = 0;
		for (j = 0; j < lastcol - firstcol + 1; j++) {
			z[j] = z[j] + alpha * p[j];
			r[j] = r[j] - alpha * q[j];
		}

		for (j = 0; j < lastcol - firstcol + 1; j++) {
			rho = rho + r[j] * r[j];
		}

		klee_assume(rho0 != 0);
		beta = rho / rho0;

		for (j = 0; j < lastcol - firstcol + 1; j++) {
			p[j] = r[j] + beta * p[j];
		}
	}

	sum = 0;
	for (j = 0; j < lastrow - firstrow + 1; j++) {
		d = 0;
		for (k = rowstr[j]; k < rowstr[j + 1]; k++) {
			d = d + a[k] * z[colidx[k]];
		}
		r[j] = d;
	}

	for (j = 0; j < lastcol - firstcol + 1; j++) {
		d = x[j] - r[j];
		sum = sum + d * d;
	}

	*rnorm = sqrt(sum);
}


