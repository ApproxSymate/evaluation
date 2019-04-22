/*
 * Random.c
 *
 *  Created on: Jul 4, 2018
 *      Author: himeshi
 */
#include "Random.h"

/* static const int one = 1; */
#define ONE 1

/* static const int mdig = 32; */
#define MDIG 32
static const int m2 = ONE << MDIG/2;

static /*const*/double dm1; /*  = 1.0 / (double) m1; */
static const int m1 = (ONE << (MDIG - 2)) + ((ONE << (MDIG - 2)) - ONE);

Random new_Random_seed(int seed) {
	Random R = (Random) malloc(sizeof(Random_struct));

	initialize(R, seed);
	R->left = 0.0;
	R->right = 1.0;
	R->width = 1.0;
	R->haveRange = 0 /*false*/;

	return R;
}

/* Returns the next random number in the sequence.  */

double Random_nextDouble(Random R) {
	int k;

	int I = R->i;
	int J = R->j;
	int *m = R->m;

	k = m[I] - m[J];
	if (k < 0)
		k += m1;
	R->m[J] = k;

	if (I == 0)
		I = 16;
	else
		I--;
	R->i = I;

	if (J == 0)
		J = 16;
	else
		J--;
	R->j = J;

	if (R->haveRange)
		return R->left + dm1 * (double) k * R->width;
	else
		return dm1 * (double) k;

}

void Random_delete(Random R) {
	free(R);
}

static void initialize(Random R, int seed)
{

    int jseed, k0, k1, j0, j1, iloop;

    dm1  = 1.0 / (double) m1;

    R->seed = seed;

    if (seed < 0 ) seed = -seed;            /* seed = abs(seed) */
    jseed = (seed < m1 ? seed : m1);        /* jseed = min(seed, m1) */
    if (jseed % 2 == 0) --jseed;
    k0 = 9069 % m2;
    k1 = 9069 / m2;
    j0 = jseed % m2;
    j1 = jseed / m2;
    for (iloop = 0; iloop < 17; ++iloop)
    {
        jseed = j0 * k0;
        j1 = (jseed / m2 + j0 * k1 + j1 * k0) % (m2 / 2);
        j0 = jseed % m2;
        R->m[iloop] = j0 + m2 * j1;
    }
    R->i = 4;
    R->j = 16;

}

