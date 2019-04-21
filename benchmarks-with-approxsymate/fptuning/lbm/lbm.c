/*
 * lbm.c
 *
 */

/*############################################################################*/

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <fenv.h>
#include "klee/klee.h"

#include <sys/stat.h>

#define SIZE   (2)
#define SIZE_X (1*SIZE)
#define SIZE_Y (1*SIZE)
#define SIZE_Z (1)

#define SWEEP_VAR int i;

#define OUTPUT_PRECISION float

#define CALC_INDEX(x,y,z,e) ((e)+N_CELL_ENTRIES*((x)+ \
                             (y)*SIZE_X+(z)*SIZE_X*SIZE_Y))

#define SWEEP_START(x1,y1,z1,x2,y2,z2) \
	for( i = CALC_INDEX(x1, y1, z1, 0); \
	     i < CALC_INDEX(x2, y2, z2, 0); \
			 i += N_CELL_ENTRIES ) {

#define SWEEP_END }

#define SWEEP_X  ((i / N_CELL_ENTRIES) % SIZE_X)
#define SWEEP_Y (((i / N_CELL_ENTRIES) / SIZE_X) % SIZE_Y)

#define GRID_ENTRY(g,x,y,z,e)          ((g)[CALC_INDEX( x,  y,  z, e)])
#define GRID_ENTRY_SWEEP(g,dx,dy,dz,e) ((g)[CALC_INDEX(dx, dy, dz, e)+(i)])

#define LOCAL(g,e)       (GRID_ENTRY_SWEEP( g,  0,  0,  0, e ))

#define DFL1 (1/ 3)
#define DFL2 (1/18)
#define DFL3 (1/36)

typedef enum {
	OBSTACLE = 1 << 0, ACCEL = 1 << 1, IN_OUT_FLOW = 1 << 2
} CELL_FLAGS;

#define MAGIC_CAST(v) ((unsigned int*) ((void*) (&(v))))
#define FLAG_VAR(v) unsigned int* const _aux_ = MAGIC_CAST(v)
#define CLEAR_ALL_FLAGS_SWEEP(g) {FLAG_VAR(LOCAL(g, FLAGS)); (*_aux_)  =    0;}
#define SET_FLAG(g,x,y,z,f)      {FLAG_VAR(GRID_ENTRY(g, x, y, z, FLAGS)); (*_aux_) |=  (f);}
#define TEST_FLAG(g,x,y,z,f)     ((*MAGIC_CAST(GRID_ENTRY(g, x, y, z, FLAGS))) & (f))
#define TEST_FLAG_SWEEP(g,f)     ((*MAGIC_CAST(LOCAL(g, FLAGS))) & (f))

#define NEIGHBOR_C(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0,  0, e ))
#define NEIGHBOR_N(g,e)  (GRID_ENTRY_SWEEP( g,  0, +1,  0, e ))
#define NEIGHBOR_S(g,e)  (GRID_ENTRY_SWEEP( g,  0, -1,  0, e ))
#define NEIGHBOR_E(g,e)  (GRID_ENTRY_SWEEP( g, +1,  0,  0, e ))
#define NEIGHBOR_W(g,e)  (GRID_ENTRY_SWEEP( g, -1,  0,  0, e ))
#define NEIGHBOR_T(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0, +1, e ))
#define NEIGHBOR_B(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0, -1, e ))
#define NEIGHBOR_NE(g,e) (GRID_ENTRY_SWEEP( g, +1, +1,  0, e ))
#define NEIGHBOR_NW(g,e) (GRID_ENTRY_SWEEP( g, -1, +1,  0, e ))
#define NEIGHBOR_SE(g,e) (GRID_ENTRY_SWEEP( g, +1, -1,  0, e ))
#define NEIGHBOR_SW(g,e) (GRID_ENTRY_SWEEP( g, -1, -1,  0, e ))
#define NEIGHBOR_NT(g,e) (GRID_ENTRY_SWEEP( g,  0, +1, +1, e ))
#define NEIGHBOR_NB(g,e) (GRID_ENTRY_SWEEP( g,  0, +1, -1, e ))
#define NEIGHBOR_ST(g,e) (GRID_ENTRY_SWEEP( g,  0, -1, +1, e ))
#define NEIGHBOR_SB(g,e) (GRID_ENTRY_SWEEP( g,  0, -1, -1, e ))
#define NEIGHBOR_ET(g,e) (GRID_ENTRY_SWEEP( g, +1,  0, +1, e ))
#define NEIGHBOR_EB(g,e) (GRID_ENTRY_SWEEP( g, +1,  0, -1, e ))
#define NEIGHBOR_WT(g,e) (GRID_ENTRY_SWEEP( g, -1,  0, +1, e ))
#define NEIGHBOR_WB(g,e) (GRID_ENTRY_SWEEP( g, -1,  0, -1, e ))

#define SRC_C(g)  (LOCAL( g, C  ))
#define SRC_N(g)  (LOCAL( g, N  ))
#define SRC_S(g)  (LOCAL( g, S  ))
#define SRC_E(g)  (LOCAL( g, E  ))
#define SRC_W(g)  (LOCAL( g, W  ))
#define SRC_T(g)  (LOCAL( g, T  ))
#define SRC_B(g)  (LOCAL( g, B  ))
#define SRC_NE(g) (LOCAL( g, NE ))
#define SRC_NW(g) (LOCAL( g, NW ))
#define SRC_SE(g) (LOCAL( g, SE ))
#define SRC_SW(g) (LOCAL( g, SW ))
#define SRC_NT(g) (LOCAL( g, NT ))
#define SRC_NB(g) (LOCAL( g, NB ))
#define SRC_ST(g) (LOCAL( g, ST ))
#define SRC_SB(g) (LOCAL( g, SB ))
#define SRC_ET(g) (LOCAL( g, ET ))
#define SRC_EB(g) (LOCAL( g, EB ))
#define SRC_WT(g) (LOCAL( g, WT ))
#define SRC_WB(g) (LOCAL( g, WB ))

#define DST_C(g)  (NEIGHBOR_C ( g, C  ))
#define DST_N(g)  (NEIGHBOR_N ( g, N  ))
#define DST_S(g)  (NEIGHBOR_S ( g, S  ))
#define DST_E(g)  (NEIGHBOR_E ( g, E  ))
#define DST_W(g)  (NEIGHBOR_W ( g, W  ))
#define DST_T(g)  (NEIGHBOR_T ( g, T  ))
#define DST_B(g)  (NEIGHBOR_B ( g, B  ))
#define DST_NE(g) (NEIGHBOR_NE( g, NE ))
#define DST_NW(g) (NEIGHBOR_NW( g, NW ))
#define DST_SE(g) (NEIGHBOR_SE( g, SE ))
#define DST_SW(g) (NEIGHBOR_SW( g, SW ))
#define DST_NT(g) (NEIGHBOR_NT( g, NT ))
#define DST_NB(g) (NEIGHBOR_NB( g, NB ))
#define DST_ST(g) (NEIGHBOR_ST( g, ST ))
#define DST_SB(g) (NEIGHBOR_SB( g, SB ))
#define DST_ET(g) (NEIGHBOR_ET( g, ET ))
#define DST_EB(g) (NEIGHBOR_EB( g, EB ))
#define DST_WT(g) (NEIGHBOR_WT( g, WT ))
#define DST_WB(g) (NEIGHBOR_WB( g, WB ))

typedef enum {
	C = 0,
	N,
	S,
	E,
	W,
	T,
	B,
	NE,
	NW,
	SE,
	SW,
	NT,
	NB,
	ST,
	SB,
	ET,
	EB,
	WT,
	WB,
	FLAGS,
	N_CELL_ENTRIES
} CELL_ENTRIES;

typedef int LBM_Grid[SIZE_Z * SIZE_Y * SIZE_X * N_CELL_ENTRIES];
typedef LBM_Grid* LBM_GridPtr;

typedef enum {
	NOTHING = 0, COMPARE, STORE
} MAIN_Action;
typedef enum {
	LDC = 0, CHANNEL
} MAIN_SimType;

typedef struct {
	int nTimeSteps;
	char* resultFilename;
	MAIN_Action action;
	MAIN_SimType simType;
	char* obstacleFilename;
} MAIN_Param;

#define TRUE (-1)
#define OMEGA (195/100)

/*############################################################################*/

static LBM_GridPtr srcGrid, dstGrid;

void LBM_handleInOutFlow(LBM_Grid srcGrid);
void LBM_allocateSrcGrid(int** ptr);
void LBM_allocateDstGrid(int** ptr);
void LBM_initializeGrid(LBM_Grid grid);
void LBM_initializeSpecialCellsForChannel(LBM_Grid grid);
void LBM_initializeSpecialCellsForLDC(LBM_Grid grid);
void LBM_showGridStatistics(LBM_Grid grid);
void LBM_freeGrid(int** ptr);
void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid);
void LBM_swapGrids(LBM_GridPtr* grid1, LBM_GridPtr* grid2);
void MAIN_finalize(const MAIN_Param* param);

/*############################################################################*/

int temp1;

int main(int nArgs, char* arg[]) {
	MAIN_Param param;
	int t;
	long startTSC, endTSC;

	param.nTimeSteps = 1;
	param.simType = CHANNEL;

	klee_make_symbolic(&temp1, sizeof(int), "temp1");

	LBM_allocateSrcGrid((int**) &srcGrid);
	LBM_allocateDstGrid((int**) &dstGrid);

	for (t = 1; t <= param.nTimeSteps; t++) {

		if (param.simType == CHANNEL) {

			LBM_handleInOutFlow(*srcGrid);
		}

		LBM_performStreamCollide(*srcGrid, *dstGrid);

		LBM_swapGrids(&srcGrid, &dstGrid);

		if ((t & 63) == 0) {
			LBM_showGridStatistics(*srcGrid);
		}
	}

	MAIN_finalize(&param);

	return 0;
}

void MAIN_finalize(const MAIN_Param* param) {
	LBM_showGridStatistics(*srcGrid);

	LBM_freeGrid((int**) &srcGrid);
	LBM_freeGrid((int**) &dstGrid);
}

void LBM_handleInOutFlow(LBM_Grid srcGrid) {
	int ux, uy, uz, rho, ux1, uy1, uz1, rho1, ux2, uy2, uz2, rho2, u2, px, py;
	SWEEP_VAR

	SWEEP_START(0, 0, 0, 0, 0, 1)
		rho1 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1,
				C) + GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, N)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, E)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, T)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, SE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, ST)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, WT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 1, WB);
		rho2 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2,
				C) + GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, N)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, E)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, T)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, SE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, ST)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, WT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, 2, WB);

		rho = 2 * rho1 - rho2;

		px = ((SWEEP_X * 2) / (SIZE_X - 1)) - 1;
		py = ((SWEEP_Y * 2) / (SIZE_Y - 1)) - 1;
		ux = 0;
		uy = 0;
		uz = (1 - px * px) * (1 - py * py) / 100;

		u2 = 3 * (ux * ux + uy * uy + uz * uz) / 2;

		LOCAL(srcGrid, C) = DFL1 * rho * (1 - u2);

		LOCAL(srcGrid, N) = DFL2 * rho * (1 + uy * (9 * uy / 2 + 3) - u2);
		LOCAL(srcGrid, S) = DFL2 * rho * (1 + uy * (9 * uy / 2 - 3) - u2);
		LOCAL(srcGrid, E) = DFL2 * rho * (1 + ux * (9 * ux / 2 + 3) - u2);
		LOCAL(srcGrid, W) = DFL2 * rho * (1 + ux * (9 * ux / 2 - 3) - u2);
		LOCAL(srcGrid, T) = DFL2 * rho * (1 + uz * (9 * uz / 2 + 3) - u2);
		LOCAL(srcGrid, B) = DFL2 * rho * (1 + uz * (9 * uz / 2 - 3) - u2);

		LOCAL(srcGrid, NE) = DFL3 * rho
				* (1 + (+ux + uy) * (9 * (+ux + uy) / 2 + 3) - u2);
		LOCAL(srcGrid, NW) = DFL3 * rho
				* (1 + (-ux + uy) * (9 * (-ux + uy) / 2 + 3) - u2);
		LOCAL(srcGrid, SE) = DFL3 * rho
				* (1 + (+ux - uy) * (9 * (+ux - uy) / 2 + 3) - u2);
		LOCAL(srcGrid, SW) = DFL3 * rho
				* (1 + (-ux - uy) * (9 * (-ux - uy) / 2 + 3) - u2);
		LOCAL(srcGrid, NT) = DFL3 * rho
				* (1 + (+uy + uz) * (9 * (+uy + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, NB) = DFL3 * rho
				* (1 + (+uy - uz) * (9 * (+uy - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, ST) = DFL3 * rho
				* (1 + (-uy + uz) * (9 * (-uy + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, SB) = DFL3 * rho
				* (1 + (-uy - uz) * (9 * (-uy - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, ET) = DFL3 * rho
				* (1 + (+ux + uz) * (9 * (+ux + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, EB) = DFL3 * rho
				* (1 + (+ux - uz) * (9 * (+ux - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, WT) = DFL3 * rho
				* (1 + (-ux + uz) * (9 * (-ux + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, WB) = DFL3 * rho
				* (1 + (-ux - uz) * (9 * (-ux - uz) / 2 + 3) - u2);
	SWEEP_END

	SWEEP_START(0, 0, SIZE_Z - 1, 0, 0, SIZE_Z)
		rho1 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1,
				C) + GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, N)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, E)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, T)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ST)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WB);
		ux1 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1,
				E) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, EB)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WB);
		uy1 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1,
				N) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NW)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NB)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ST)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SB);
		uz1 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1,
				T) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ST)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, ET)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -1, WB);

		klee_assume(rho1 != 0);
		ux1 /= rho1;
		uy1 /= rho1;
		uz1 /= rho1;

		rho2 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2,
				C) + GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, N)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, E)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, T)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ST)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WB);
		ux2 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2,
				E) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, W)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ET)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, EB)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WB);
		uy2 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2,
				N) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, S)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NE)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NW)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SE)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SW)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NT)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NB)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ST)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SB);
		uz2 = +GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2,
				T) - GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, B)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, NB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ST)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, SB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, ET)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, EB)
				+ GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WT)
				- GRID_ENTRY_SWEEP(srcGrid, 0, 0, -2, WB);

		klee_assume(rho2 != 0);
		ux2 /= rho2;
		uy2 /= rho2;
		uz2 /= rho2;

		rho = 1;

		ux = 2 * ux1 - ux2;
		uy = 2 * uy1 - uy2;
		uz = 2 * uz1 - uz2;

		u2 = 3 * (ux * ux + uy * uy + uz * uz) / 2;

		LOCAL(srcGrid, C) = DFL1 * rho * (1 - u2);

		LOCAL(srcGrid, N) = DFL2 * rho * (1 + uy * (9 * uy / 2 + 3) - u2);
		LOCAL(srcGrid, S) = DFL2 * rho * (1 + uy * (9 * uy / 2 - 3) - u2);
		LOCAL(srcGrid, E) = DFL2 * rho * (1 + ux * (9 * ux / 2 + 3) - u2);
		LOCAL(srcGrid, W) = DFL2 * rho * (1 + ux * (9 * ux / 2 - 3) - u2);
		LOCAL(srcGrid, T) = DFL2 * rho * (1 + uz * (9 * uz / 2 + 3) - u2);
		LOCAL(srcGrid, B) = DFL2 * rho * (1 + uz * (9 * uz / 2 - 3) - u2);

		LOCAL(srcGrid, NE) = DFL3 * rho
				* (1 + (+ux + uy) * (9 * (+ux + uy) / 2 + 3) - u2);
		LOCAL(srcGrid, NW) = DFL3 * rho
				* (1 + (-ux + uy) * (9 * (-ux + uy) / 2 + 3) - u2);
		LOCAL(srcGrid, SE) = DFL3 * rho
				* (1 + (+ux - uy) * (9 * (+ux - uy) / 2 + 3) - u2);
		LOCAL(srcGrid, SW) = DFL3 * rho
				* (1 + (-ux - uy) * (9 * (-ux - uy) / 2 + 3) - u2);
		LOCAL(srcGrid, NT) = DFL3 * rho
				* (1 + (+uy + uz) * (9 * (+uy + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, NB) = DFL3 * rho
				* (1 + (+uy - uz) * (9 * (+uy - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, ST) = DFL3 * rho
				* (1 + (-uy + uz) * (9 * (-uy + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, SB) = DFL3 * rho
				* (1 + (-uy - uz) * (9 * (-uy - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, ET) = DFL3 * rho
				* (1 + (+ux + uz) * (9 * (+ux + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, EB) = DFL3 * rho
				* (1 + (+ux - uz) * (9 * (+ux - uz) / 2 + 3) - u2);
		LOCAL(srcGrid, WT) = DFL3 * rho
				* (1 + (-ux + uz) * (9 * (-ux + uz) / 2 + 3) - u2);
		LOCAL(srcGrid, WB) = DFL3 * rho
				* (1 + (-ux - uz) * (9 * (-ux - uz) / 2 + 3) - u2);
	SWEEP_END
}

void LBM_initializeGrid(LBM_Grid grid) {
	SWEEP_VAR

	SWEEP_START(0, 0, -2, 0, 0, SIZE_Z + 2)
		LOCAL(grid, C) = DFL1;
		LOCAL(grid, N) = DFL2;
		LOCAL(grid, S) = DFL2;
		LOCAL(grid, E) = DFL2;
		LOCAL(grid, W) = DFL2;
		LOCAL(grid, T) = DFL2;
		LOCAL(grid, B) = DFL2;
		LOCAL(grid, NE) = DFL3;
		LOCAL(grid, NW) = DFL3;
		LOCAL(grid, SE) = DFL3;
		LOCAL(grid, SW) = DFL3;
		LOCAL(grid, NT) = DFL3;
		LOCAL(grid, NB) = DFL3;
		LOCAL(grid, ST) = DFL3;
		LOCAL(grid, SB) = DFL3;
		LOCAL(grid, ET) = DFL3;
		LOCAL(grid, EB) = DFL3;
		LOCAL(grid, WT) = DFL3;
		LOCAL(grid, WB) = DFL3;

		CLEAR_ALL_FLAGS_SWEEP(grid);SWEEP_END
}

void LBM_allocateSrcGrid(int** ptr) {
	const size_t margin = 2 * SIZE_X * SIZE_Y * N_CELL_ENTRIES;
	int size = sizeof(LBM_Grid) + 2 * margin * sizeof(int);

	*ptr = malloc(size);
	klee_make_symbolic(*ptr, sizeof(int) * 400, "__arr32__srcGrid");
	klee_track_error(*ptr, "srcGrid_err");

	*ptr += margin;
}

void LBM_allocateDstGrid(int** ptr) {
	const size_t margin = 2 * SIZE_X * SIZE_Y * N_CELL_ENTRIES;
	int size = sizeof(LBM_Grid) + 2 * margin * sizeof(int);

	*ptr = malloc(size);

	*ptr += margin;
}

void LBM_initializeSpecialCellsForChannel(LBM_Grid grid) {
	int x, y, z;

	for (z = -2; z < SIZE_Z + 2; z++) {
		for (y = 0; y < SIZE_Y; y++) {
			for (x = 0; x < SIZE_X; x++) {
				if (x == 0 || x == SIZE_X - 1 || y == 0 || y == SIZE_Y - 1) {
					SET_FLAG(grid, x, y, z, OBSTACLE);

					if ((z == 0 || z == SIZE_Z - 1)
							&& !TEST_FLAG(grid, x, y, z, OBSTACLE))
						SET_FLAG(grid, x, y, z, IN_OUT_FLOW);
				}
			}
		}
	}
}

void LBM_initializeSpecialCellsForLDC(LBM_Grid grid) {
	int x, y, z;

	for (z = -2; z < SIZE_Z + 2; z++) {
		for (y = 0; y < SIZE_Y; y++) {
			for (x = 0; x < SIZE_X; x++) {
				if (x == 0 || x == SIZE_X - 1 || y == 0 || y == SIZE_Y - 1
						|| z == 0 || z == SIZE_Z - 1) {
					SET_FLAG(grid, x, y, z, OBSTACLE);
				} else {
					if ((z == 1 || z == SIZE_Z - 2) && x > 1 && x < SIZE_X - 2
							&& y > 1 && y < SIZE_Y - 2) {
						SET_FLAG(grid, x, y, z, ACCEL);
					}
				}
			}
		}
	}
}

void LBM_showGridStatistics(LBM_Grid grid) {
	int nObstacleCells = 0, nAccelCells = 0, nFluidCells = 0;
	int ux, uy, uz;
	int minU2, maxU2, u2;
	int minRho, maxRho, rho;
	int mass = 0;

	klee_make_symbolic(&minU2, sizeof(int), "minU2");
	klee_make_symbolic(&maxU2, sizeof(int), "maxU2");
	klee_make_symbolic(&minRho, sizeof(int), "minRho");
	klee_make_symbolic(&maxRho, sizeof(int), "maxRho");

	klee_track_error(&minU2, "minU2_err");
	klee_track_error(&maxU2, "maxU2_err");
	klee_track_error(&minRho, "minRho_err");
	klee_track_error(&maxRho, "maxRho_err");

	SWEEP_VAR

	SWEEP_START(0, 0, 0, 0, 0, SIZE_Z)
		rho = +LOCAL(grid, C) + LOCAL(grid, N) + LOCAL(grid, S) + LOCAL(grid, E)
		+ LOCAL(grid, W) + LOCAL(grid, T) + LOCAL(grid, B) + LOCAL(grid, NE)
		+ LOCAL(grid, NW) + LOCAL(grid, SE) + LOCAL(grid, SW)
		+ LOCAL(grid, NT) + LOCAL(grid, NB) + LOCAL(grid, ST)
		+ LOCAL(grid, SB) + LOCAL(grid, ET) + LOCAL(grid, EB)
		+ LOCAL(grid, WT) + LOCAL(grid, WB);
		if (rho < minRho)
			minRho = rho;
		if (rho > maxRho)
			maxRho = rho;
//printf("%lf\n", rho);
		mass += rho;

		if (TEST_FLAG_SWEEP(grid, OBSTACLE)) {
			nObstacleCells++;
		} else {
			if (TEST_FLAG_SWEEP(grid, ACCEL))
				nAccelCells++;
			else
				nFluidCells++;

			ux = +LOCAL(grid, E) - LOCAL(grid, W) + LOCAL(grid, NE)
					- LOCAL(grid, NW) + LOCAL(grid, SE) - LOCAL(grid, SW)
					+ LOCAL(grid, ET) + LOCAL(grid, EB) - LOCAL(grid, WT)
					- LOCAL(grid, WB);
			uy = +LOCAL(grid, N) - LOCAL(grid, S) + LOCAL(grid, NE)
					+ LOCAL(grid, NW) - LOCAL(grid, SE) - LOCAL(grid, SW)
					+ LOCAL(grid, NT) + LOCAL(grid, NB) - LOCAL(grid, ST)
					- LOCAL(grid, SB);
			uz = +LOCAL(grid, T) - LOCAL(grid, B) + LOCAL(grid, NT)
					- LOCAL(grid, NB) + LOCAL(grid, ST) - LOCAL(grid, SB)
					+ LOCAL(grid, ET) - LOCAL(grid, EB) + LOCAL(grid, WT)
					- LOCAL(grid, WB);
			u2 = (ux * ux + uy * uy + uz * uz) / (rho * rho);
			if (u2 < minU2) {
				minU2 = u2;
			}
			if (u2 > maxU2) {
				maxU2 = u2;
			}
		}SWEEP_END

}

void LBM_freeGrid(int** ptr) {
	const size_t margin = 2 * SIZE_X * SIZE_Y * N_CELL_ENTRIES;

	free(*ptr - margin);
	*ptr = NULL;
}

void LBM_performStreamCollide(LBM_Grid srcGrid, LBM_Grid dstGrid) {
	SWEEP_VAR

	int ux, uy, uz, u2, rho;

	SWEEP_START( 0, 0, 0, 0, 0, SIZE_Z )

		if (TEST_FLAG_SWEEP(srcGrid, OBSTACLE)) {
			DST_C ( dstGrid ) = SRC_C(srcGrid);
			DST_S ( dstGrid ) = SRC_N(srcGrid);
			DST_N ( dstGrid ) = SRC_S(srcGrid);
			DST_W ( dstGrid ) = SRC_E(srcGrid);
			DST_E ( dstGrid ) = SRC_W(srcGrid);
			DST_B ( dstGrid ) = SRC_T(srcGrid);
			DST_T ( dstGrid ) = SRC_B(srcGrid);
			DST_SW( dstGrid ) = SRC_NE(srcGrid);
			DST_SE( dstGrid ) = SRC_NW(srcGrid);
			DST_NW( dstGrid ) = SRC_SE(srcGrid);
			DST_NE( dstGrid ) = SRC_SW(srcGrid);
			DST_SB( dstGrid ) = SRC_NT(srcGrid);
			DST_ST( dstGrid ) = SRC_NB(srcGrid);
			DST_NB( dstGrid ) = SRC_ST(srcGrid);
			DST_NT( dstGrid ) = SRC_SB(srcGrid);
			DST_WB( dstGrid ) = SRC_ET(srcGrid);
			DST_WT( dstGrid ) = SRC_EB(srcGrid);
			DST_EB( dstGrid ) = SRC_WT(srcGrid);
			DST_ET( dstGrid ) = SRC_WB(srcGrid);
			continue;
		}

		rho = +SRC_C(srcGrid);
		rho += SRC_N(srcGrid) + SRC_S ( srcGrid ) + SRC_E ( srcGrid )
		+ SRC_W ( srcGrid ) + SRC_T ( srcGrid )
		+ SRC_B ( srcGrid ) + SRC_NE( srcGrid )
		+ SRC_NW( srcGrid ) + SRC_SE( srcGrid )
		+ SRC_SW( srcGrid ) + SRC_NT( srcGrid )
		+ SRC_NB( srcGrid ) + SRC_ST( srcGrid )
		+ SRC_SB( srcGrid ) + SRC_ET( srcGrid )
		+ SRC_EB( srcGrid ) + SRC_WT( srcGrid )
		+ SRC_WB( srcGrid );

		ux = +SRC_E(srcGrid) - SRC_W(srcGrid);

		ux += SRC_NE( srcGrid ) - SRC_NW(srcGrid) + SRC_SE(srcGrid)
				- SRC_SW(srcGrid) + SRC_ET(srcGrid) + SRC_EB(srcGrid)
				- SRC_WT(srcGrid) - SRC_WB(srcGrid) + 1 / 1000;

		uy = +SRC_N(srcGrid) - SRC_S(srcGrid) + SRC_NE(srcGrid)
				+ SRC_NW(srcGrid) - SRC_SE(srcGrid) - SRC_SW(srcGrid)
				+ SRC_NT(srcGrid) + SRC_NB( srcGrid )
				- SRC_ST( srcGrid ) - SRC_SB( srcGrid );
		uz = +SRC_T(srcGrid) - SRC_B(srcGrid) + SRC_NT(srcGrid)
				- SRC_NB(srcGrid) + SRC_ST(srcGrid) - SRC_SB(srcGrid)
				+ SRC_ET(srcGrid) - SRC_EB(srcGrid) + SRC_WT(srcGrid)
				- SRC_WB(srcGrid);

		rho = rho + temp1;
		klee_assume(temp1 != 0);
		ux /= rho;
		uy /= rho;
		uz /= rho;

		if (TEST_FLAG_SWEEP(srcGrid, ACCEL)) {
			ux = 5 / 1000;
			uy = 2 / 1000;
			uz = 0;
		}

		u2 = 3 * (ux * ux + uy * uy + uz * uz) / 2;
		DST_C ( dstGrid ) = (1 - OMEGA) * SRC_C(srcGrid)
				+ DFL1 * OMEGA * rho * (1 - u2);

		DST_N ( dstGrid ) = (1 - OMEGA) * SRC_N(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + uy * (9 * uy / 2 + 3) - u2);
		DST_S ( dstGrid ) = (1 - OMEGA) * SRC_S(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + uy * (9 * uy / 2 - 3) - u2);
		DST_E ( dstGrid ) = (1 - OMEGA) * SRC_E(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + ux * (9 * ux / 2 + 3) - u2);
		DST_W ( dstGrid ) = (1 - OMEGA) * SRC_W(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + ux * (9 * ux / 2 - 3) - u2);
		DST_T ( dstGrid ) = (1 - OMEGA) * SRC_T(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + uz * (9 * uz / 2 + 3) - u2);
		DST_B ( dstGrid ) = (1 - OMEGA) * SRC_B(srcGrid)
				+ DFL2 * OMEGA * rho * (1 + uz * (9 * uz / 2 - 3) - u2);

		DST_NE( dstGrid ) = (1 - OMEGA) * SRC_NE(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+ux + uy) * (9 * (+ux + uy) / 2 + 3) - u2);
		DST_NW( dstGrid ) = (1 - OMEGA) * SRC_NW(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-ux + uy) * (9 * (-ux + uy) / 2 + 3) - u2);
		DST_SE( dstGrid ) = (1 - OMEGA) * SRC_SE(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+ux - uy) * (9 * (+ux - uy) / 2 + 3) - u2);
		DST_SW( dstGrid ) = (1 - OMEGA) * SRC_SW(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-ux - uy) * (9 * (-ux - uy) / 2 + 3) - u2);
		DST_NT( dstGrid ) = (1 - OMEGA) * SRC_NT(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+uy + uz) * (9 * (+uy + uz) / 2 + 3) - u2);
		DST_NB( dstGrid ) = (1 - OMEGA) * SRC_NB(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+uy - uz) * (9 * (+uy - uz) / 2 + 3) - u2);
		DST_ST( dstGrid ) = (1 - OMEGA) * SRC_ST(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-uy + uz) * (9 * (-uy + uz) / 2 + 3) - u2);
		DST_SB( dstGrid ) = (1 - OMEGA) * SRC_SB(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-uy - uz) * (9 * (-uy - uz) / 2 + 3) - u2);
		DST_ET( dstGrid ) = (1 - OMEGA) * SRC_ET(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+ux + uz) * (9 * (+ux + uz) / 2 + 3) - u2);
		DST_EB( dstGrid ) = (1 - OMEGA) * SRC_EB(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (+ux - uz) * (9 * (+ux - uz) / 2 + 3) - u2);
		DST_WT( dstGrid ) = (1 - OMEGA) * SRC_WT(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-ux + uz) * (9 * (-ux + uz) / 2 + 3) - u2);
		DST_WB( dstGrid ) = (1 - OMEGA) * SRC_WB(srcGrid)
				+ DFL3 * OMEGA * rho
						* (1 + (-ux - uz) * (9 * (-ux - uz) / 2 + 3) - u2);

	SWEEP_END
}

void LBM_swapGrids(LBM_GridPtr* grid1, LBM_GridPtr* grid2) {
	LBM_GridPtr aux = *grid1;
	*grid1 = *grid2;
	*grid2 = aux;
}


