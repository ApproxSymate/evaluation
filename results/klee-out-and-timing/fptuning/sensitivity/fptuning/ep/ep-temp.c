/*
 * ep-temp.c
 *
 *  Created on: Aug 30, 2018
 *      Author: himeshi
 */
//-------------------------------------------------------------------------//
//                                                                         //
//  This benchmark is a serial C version of the NPB EP code. This C        //
//  version is developed by the Center for Manycore Programming at Seoul   //
//  National University and derived from the serial Fortran versions in    //
//  "NPB3.3-SER" developed by NAS.                                         //
//                                                                         //
//  Permission to use, copy, distribute and modify this software for any   //
//  purpose with or without fee is hereby granted. This software is        //
//  provided "as is" without express or implied warranty.                  //
//                                                                         //
//  Information on NPB 3.3, including the technical report, the original   //
//  specifications, source code, results and information on how to submit  //
//  new results, is available at:                                          //
//                                                                         //
//           http://www.nas.nasa.gov/Software/NPB/                         //
//                                                                         //
//  Send comments or suggestions for this C version to cmp@aces.snu.ac.kr  //
//                                                                         //
//          Center for Manycore Programming                                //
//          School of Computer Science and Engineering                     //
//          Seoul National University                                      //
//          Seoul 151-744, Korea                                           //
//                                                                         //
//          E-mail:  cmp@aces.snu.ac.kr                                    //
//                                                                         //
//-------------------------------------------------------------------------//
//-------------------------------------------------------------------------//
// Authors: Sangmin Seo, Jungwon Kim, Jun Lee, Jeongho Nah, Gangwon Jo,    //
//          and Jaejin Lee                                                 //
//-------------------------------------------------------------------------//
//--------------------------------------------------------------------
//      program EMBAR
//--------------------------------------------------------------------
//  This is the serial version of the APP Benchmark 1,
//  the "embarassingly parallel" benchmark.
//
//
//  M is the Log_2 of the number of complex pairs of uniform (0, 1) random
//  numbers.  MK is the Log_2 of the size of each batch of uniform random
//  numbers.  MK can be set for convenience on a given system, since it does
//  not affect the results.
//--------------------------------------------------------------------
//~ #include <stdio.h>
//~ #include <stdlib.h>
//~ #include <math.h>
//~ #include "randdp.h"
#include <math.h>
#include <stdio.h>

#define CLASS  'A'
#define M      28
#define min(x,y)    ((x) < (y) ? (x) : (y))
#define max(x,y)    ((x) > (y) ? (x) : (y))
#define MAX(X,Y)  (((X) > (Y)) ? (X) : (Y))

#define MK        16
#define MM        (M - MK)
#define NN        (1 << MM)
#define NK        (1 << MK)
#define NQ        10
#define EPSILON   1.0e-8 //Error threshold
#define A         1220703125.0
#define S         271828183.0

double x_temp;
double q_temp;

double randlc(double *x, double a) {

	double star_x_temp, a_temp;
	const double r23 = 1.1920928955078125e-07;
	const double r46 = r23 * r23;
	const double t23 = 8.388608e+06;
	const double t46 = t23 * t23;

	double t1, t2, t3, t4, a1, a2, x1, x2, z;
	double r;

	a_temp = a;
	t1 = r23 * a_temp;
	a1 = (int) t1;
	a2 = a_temp - t23 * a1;

	star_x_temp = (*x);

	t1 = r23 * star_x_temp;
	x1 = (int) t1;
	x2 = star_x_temp - t23 * x1;
	t1 = a1 * x2 + a2 * x1;
	t2 = (int) (r23 * t1);
	z = t1 - t23 * t2;
	t3 = t23 * z + a2 * x2;
	t4 = (int) (r46 * t3);
	star_x_temp = t3 - t46 * t4;
	*x = star_x_temp;
	r = r46 * star_x_temp;

	return r;
}

void vranlc(int n, double *x, double a, double y[]) {

	double star_x_temp, a_temp, y_temp;
	const double r23 = 1.1920928955078125e-07;
	const double r46 = r23 * r23;
	const double t23 = 8.388608e+06;
	const double t46 = t23 * t23;

	double t1, t2, t3, t4, a1, a2, x1, x2, z;

	int i;
	a_temp = a;

	t1 = r23 * a_temp;
	a1 = (int) t1;
	a2 = a_temp - t23 * a1;

	for (i = 0; i < n; i++) {

		star_x_temp = (*x);

		t1 = r23 * star_x_temp;
		x1 = (int) t1;
		x2 = star_x_temp - t23 * x1;
		t1 = a1 * x2 + a2 * x1;
		t2 = (int) (r23 * t1);
		z = t1 - t23 * t2;
		t3 = t23 * z + a2 * x2;
		t4 = (int) (r46 * t3);

		star_x_temp = t3 - t46 * t4;
		*x = star_x_temp;
		y_temp = r46 * star_x_temp;
		y[i] = y_temp;
	}

	return;
}

int main() {

	double dum[3] = { 1.0, 1.0, 1.0 };

	vranlc(1, &dum[0], dum[1], &dum[2]);
	dum[0] = randlc(&dum[1], dum[2]);

	return 0;
}

