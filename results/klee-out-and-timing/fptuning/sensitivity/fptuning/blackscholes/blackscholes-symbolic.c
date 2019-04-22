/*
 * blackscholes-symbolic.c
 *
 * Compile with: /home/himeshi/Projects/Approx/llvm/build/bin/clang -I /home/himeshi/Projects/Approx/klee/klee/include -emit-llvm -c -g blackscholes-symbolic.c
 * Run with: /home/himeshi/Projects/Approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
 *
 *  Created on: Aug 26, 2018
 *      Author: himeshi
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "klee/klee.h"

//Precision to use for calculations
#define fptype int

#define NUM_RUNS 1

typedef struct OptionData_ {
	fptype s;          // spot price
	fptype strike;          // strike price
	fptype r;          // risk-free interest rate
	fptype divq;          // dividend rate
	fptype v;          // volatility
	fptype t;          // time to maturity or option expiration in years
					   //     (1yr = 1.0, 6mos = 0.5, 3mos = 0.25, ..., etc)
	char OptionType;			 // Option type.  "P"=PUT, "C"=CALL
	fptype divs;			 // dividend vals (not used in this test)
	fptype DGrefval;			 // DerivaGem Reference Value
} OptionData;

//OptionData data;
//Klee doesn't print the struct fields properly, so taking it apart
fptype data_s;
fptype data_strike;
fptype data_r;
fptype data_divq;
fptype data_v;
fptype data_t;
char data_OptionType;
fptype data_divs;
fptype data_DGrefval;

fptype prices;
int numOptions;

int * otype;
fptype * sptprice;
fptype * strike;
fptype * rate;
fptype * volatility;
fptype * otime;
int numError = 0;
int nThreads;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// Cumulative Normal Distribution Function
// See Hull, Section 11.8, P.243-244
int inv_sqrt_2xPI;

fptype CNDF( fptype InputX) {
	int sign;

	fptype OutputX;
	fptype xInput;
	fptype xNPrimeofX;
	fptype expValues;
	fptype xK2;
	fptype xK2_2, xK2_3;
	fptype xK2_4, xK2_5;
	fptype xLocal, xLocal_1;
	fptype xLocal_2, xLocal_3;

	// Check for negative value of InputX
	if (InputX < 0) {
		InputX = -InputX;
		sign = 1;
	} else
		sign = 0;

	xInput = InputX;

	// Compute NPrimeX term common to both four & six decimal accuracy calcs
	expValues = exp(InputX * InputX / (-2));
	xNPrimeofX = expValues;
	xNPrimeofX = xNPrimeofX * inv_sqrt_2xPI;

	int temp1, temp2, temp3, temp4, temp5, temp6;

	klee_make_symbolic(&temp1, sizeof(int), "temp1");
	klee_make_symbolic(&temp2, sizeof(int), "temp2");
	klee_make_symbolic(&temp3, sizeof(int), "temp3");
	klee_make_symbolic(&temp4, sizeof(int), "temp4");
	klee_make_symbolic(&temp5, sizeof(int), "temp5");
	klee_make_symbolic(&temp6, sizeof(int), "temp6");

	klee_track_error(&temp1, "temp1_err");
	klee_track_error(&temp2, "temp2_err");
	klee_track_error(&temp3, "temp3_err");
	klee_track_error(&temp4, "temp4_err");
	klee_track_error(&temp5, "temp5_err");
	klee_track_error(&temp6, "temp6_err");

	xK2 = temp1 * xInput;
	xK2 = 1 + xK2;
	klee_assume(xK2 != 0);
	xK2 = 1 / xK2;
	xK2_2 = xK2 * xK2;
	xK2_3 = xK2_2 * xK2;
	xK2_4 = xK2_3 * xK2;
	xK2_5 = xK2_4 * xK2;

	xLocal_1 = xK2 * temp2;
	xLocal_2 = xK2_2 * (temp3);
	xLocal_3 = xK2_3 * temp4;
	xLocal_2 = xLocal_2 + xLocal_3;
	xLocal_3 = xK2_4 * (temp5);
	xLocal_2 = xLocal_2 + xLocal_3;
	xLocal_3 = xK2_5 * temp6;
	xLocal_2 = xLocal_2 + xLocal_3;

	xLocal_1 = xLocal_2 + xLocal_1;
	xLocal = xLocal_1 * xNPrimeofX;
	xLocal = 1 - xLocal;

	OutputX = xLocal;

	if (sign) {
		OutputX = 1 - OutputX;
	}

	return OutputX;
}

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
fptype BlkSchlsEqEuroNoDiv( fptype sptprice,
fptype strike, fptype rate, fptype volatility,
fptype time, int otype, int timet) {
	fptype OptionPrice;

	// local private working variables for the calculation
	fptype xStockPrice;
	fptype xStrikePrice;
	fptype xRiskFreeRate;
	fptype xVolatility;
	fptype xTime;
	fptype xSqrtTime;

	fptype logValues;
	fptype xLogTerm;
	fptype xD1;
	fptype xD2;
	fptype xPowerTerm;
	fptype xDen;
	fptype d1;
	fptype d2;
	fptype FutureValueX;
	fptype NofXd1;
	fptype NofXd2;
	fptype NegNofXd1;
	fptype NegNofXd2;

	xStockPrice = sptprice;
	xStrikePrice = strike;
	xRiskFreeRate = rate;
	xVolatility = volatility;

	xTime = time;
	xSqrtTime = sqrt(xTime);

	klee_assume(strike != 0);
	logValues = log(sptprice / strike);

	xLogTerm = logValues;

	xPowerTerm = xVolatility * xVolatility;
	xPowerTerm = xPowerTerm / 2;

	xD1 = xRiskFreeRate + xPowerTerm;
	xD1 = xD1 * xTime;
	xD1 = xD1 + xLogTerm;

	xDen = xVolatility * xSqrtTime;
	klee_assume(xDen != 0);
	xD1 = xD1 / xDen;
	xD2 = xD1 - xDen;

	d1 = xD1;
	d2 = xD2;

	NofXd1 = CNDF(d1);
	NofXd2 = CNDF(d2);

	FutureValueX = exp(-(rate));
	FutureValueX = FutureValueX * strike * (time);
	if (otype == 0) {
		OptionPrice = (sptprice * NofXd1) - (FutureValueX * NofXd2);
	} else {
		NegNofXd1 = (1 - NofXd1);
		NegNofXd2 = (1 - NofXd2);
		OptionPrice = (FutureValueX * NegNofXd2) - (sptprice * NegNofXd1);
	}

	return OptionPrice;
}

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

int bs_thread(void *tid_ptr) {
	int i, j;
	fptype price;
	fptype priceDelta;
	int tid = *(int *) tid_ptr;
	int start = tid * (numOptions / nThreads);
	int end = start + (numOptions / nThreads);

	for (j = 0; j < NUM_RUNS; j++) {
		for (i = start; i < end; i++) {
			//ENABLE_OPENMP
			/* Calling main function to calculate option value based on
			 * Black & Scholes's equation.
			 */
			price = BlkSchlsEqEuroNoDiv(sptprice[i], strike[i], rate[i],
					volatility[i], otime[i], otype[i], 0);
			prices = price;
		}
	}

	return 0;
}

int main(int argc, char **argv) {
	FILE *file;
	int i;
	int loopnum;
	fptype * buffer;
	int * buffer2;
	int rv;

	nThreads = 1;
	numOptions = 1;

	klee_make_symbolic(&inv_sqrt_2xPI, sizeof(int), "inv_sqrt_2xPI");
	klee_make_symbolic(&data_s, sizeof(int), "data_s");
	klee_make_symbolic(&data_strike, sizeof(int), "data_strike");
	klee_make_symbolic(&data_r, sizeof(int), "data_r");
	klee_make_symbolic(&data_divq, sizeof(int), "data_divq");
	klee_make_symbolic(&data_v, sizeof(int), "data_v");
	klee_make_symbolic(&data_t, sizeof(int), "data_t");
	klee_make_symbolic(&data_divs, sizeof(int), "data_divs");
	klee_make_symbolic(&data_DGrefval, sizeof(int), "data_DGrefval");
	data_OptionType = 'C';

	klee_track_error(&inv_sqrt_2xPI, "invsqrt2xPI_err");
	klee_track_error(&data_s, "datas_err");
	klee_track_error(&data_strike, "datastrike_err");
	klee_track_error(&data_r, "datar_err");
	klee_track_error(&data_divq, "datadivq_err");
	klee_track_error(&data_v, "datav_err");
	klee_track_error(&data_t, "datat_err");
	klee_track_error(&data_divs, "datadivs_err");
	klee_track_error(&data_DGrefval, "dataDGrefval_err");

#define PAD 256
#define LINESIZE 64

	buffer = (fptype *) malloc(5 * numOptions * sizeof(fptype) + PAD);
	sptprice =
			(fptype *) (((unsigned long long) buffer + PAD) & ~(LINESIZE - 1));
	strike = sptprice + numOptions;
	rate = strike + numOptions;
	volatility = rate + numOptions;
	otime = volatility + numOptions;

	buffer2 = (int *) malloc(numOptions * sizeof(fptype) + PAD);
	otype = (int *) (((unsigned long long) buffer2 + PAD) & ~(LINESIZE - 1));

	for (i = 0; i < numOptions; i++) {
		otype[i] = (data_OptionType == 'P') ? 1 : 0;
		sptprice[i] = data_s;
		strike[i] = data_strike;
		rate[i] = data_r;
		volatility[i] = data_v;
		otime[i] = data_t;
	}

	//serial version
	int tid = 0;
	bs_thread(&tid);

	return 0;
}
