#!/usr/bin/env bash

# Timeout of 60 seconds
TIMEOUT=60
CURRENT_DIR=`pwd`
RELATIVE_SCRIPT_DIR=`dirname $0`
SCRIPT_DIR="$CURRENT_DIR/$RELATIVE_SCRIPT_DIR"
BENCHMARK_DIRS="benchmarks/imagefill/floodfill \
benchmarks/scimark/FFTTransformScimark \
benchmarks/scimark/LUScimark \
benchmarks/scimark/MonteCarloScimark \
benchmarks/scimark/SORScimark \
benchmarks/scimark/SparseMatMulScimark \
benchmarks/simpleRayTracer"

if [ x$APPROXIMABILITY_DIR = x ] ; then
    APPROXIMABILITY_DIR=$HOME/software/approximability
fi
if [ ! -e $APPROXIMABILITY_DIR/find_approx.py ] ; then
    echo $APPROXIMABILITY_DIR/find_approx.py not found. Have you specified APPROXIMABILITY_DIR correctly?
    exit 1
fi
if [ x$KLEE_DIR = x ] ; then
    KLEE_DIR=$HOME/software/fp-analysis-klee/build
fi
if [ ! -x $KLEE_DIR/bin/klee ] ; then
    echo $KLEE_DIR/bin/klee not found. Have you specified KLEE_DIR correctly?
    exit 1
fi

export APPROXIMABILITY_DIR="$APPOXIMABILITY_DIR"
export KLEE_DIR="$KLEE_DIR"
export TIMEOUT="$TIMEOUT"
for BENCHMARK in $BENCHMARK_DIRS ; do
    pushd $SCRIPT_DIR/$BENCHMARK > /dev/null
    ./run.sh
    popd > /dev/null
done

# Create table after we're done.
# t/o means timed out.
EXPERIMENTAL_TABLE=$SCRIPT_DIR/results.csv
rm -rf $EXPERIMENTAL_TABLE
for BENCHMARK in $BENCHMARK_DIRS ; do
    pushd $SCRIPT_DIR/$BENCHMARK > /dev/null
    # The benchmark name
    echo -n $(basename $BENCHMARK) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE
    # KLEE time for standard run
    if [ -e out-0-timeout.txt ] ; then
	echo -n "t/o" >> $EXPERIMENTAL_TABLE
    else
	grep "Elapsed:" klee-out-0/info | cut -d' ' -f2 | sed 's/:/ /g;' | awk '{print $3" "$2" "$1}' | awk '{print $1+$2*60+$3*3600}' | tr -d '\n' >> $EXPERIMENTAL_TABLE
    fi
    echo -n "," >> $EXPERIMENTAL_TABLE
    # KLEE time for run without checking for infeasible path 
    if [ -e out-1-timeout.txt ] ; then
	echo -n "t/o" >> $EXPERIMENTAL_TABLE
    else
	grep "Elapsed:" klee-out-1/info | cut -d' ' -f2 | sed 's/:/ /g;' | awk '{print $3" "$2" "$1}' | awk '{print $1+$2*60+$3*3600}' | tr -d '\n' >> $EXPERIMENTAL_TABLE
    fi
    echo -n "," >> $EXPERIMENTAL_TABLE
    # KLEE time for run with loop breaking with default trip count 5
    if [ -e out-2-timeout.txt ] ; then
	echo -n "t/o" >> $EXPERIMENTAL_TABLE
    else
	grep "Elapsed:" klee-out-2/info | cut -d' ' -f2 | sed 's/:/ /g;' | awk '{print $3" "$2" "$1}' | awk '{print $1+$2*60+$3*3600}' | tr -d '\n' >> $EXPERIMENTAL_TABLE
    fi
    echo -n "," >> $EXPERIMENTAL_TABLE
    # KLEE time for run with loop breaking with default trip count 10
    if [ -e out-3-timeout.txt ] ; then
	echo -n "t/o" >> $EXPERIMENTAL_TABLE
    else
	grep "Elapsed:" klee-out-3/info | cut -d' ' -f2 | sed 's/:/ /g;' | awk '{print $3" "$2" "$1}' | awk '{print $1+$2*60+$3*3600}' | tr -d '\n' >> $EXPERIMENTAL_TABLE
    fi
    echo -n "," >> $EXPERIMENTAL_TABLE
    # KLEE time for run with loop breaking with default trip count 15
    if [ -e out-4-timeout.txt ] ; then
	echo -n "t/o" >> $EXPERIMENTAL_TABLE
    else
	grep "Elapsed:" klee-out-4/info | cut -d' ' -f2 | sed 's/:/ /g;' | awk '{print $3" "$2" "$1}' | awk '{print $1+$2*60+$3*3600}' | tr -d '\n' >> $EXPERIMENTAL_TABLE
    fi
    echo -n "," >> $EXPERIMENTAL_TABLE

    # KLEE tests for the standard run
    ( ls klee-out-0/*.ktest | wc -l | tr -d '\n' ) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # KLEE tests for the run without checking infeasible path
    ( ls klee-out-1/*.ktest | wc -l | tr -d '\n' ) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # KLEE tests for the run with loop breaking with default trip count 5
    ( ls klee-out-2/*.ktest | wc -l | tr -d '\n' ) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # KLEE tests for the run with loop breaking with default trip count 10
    ( ls klee-out-3/*.ktest | wc -l | tr -d '\n' ) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # KLEE tests for the run with loop breaking with default trip count 15
    ( ls klee-out-4/*.ktest | wc -l | tr -d '\n' ) >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # Distance of loop breaking run with default trip count 5 with standard run
    STANDARD_ONLY=`comm -2 -3 approximable_sorted-0.txt approximable_sorted-2.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 approximable_sorted-0.txt approximable_sorted-2.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 approximable_sorted-0.txt approximable_sorted-2.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    STANDARD_ONLY=`comm -2 -3 non_approximable_sorted-0.txt non_approximable_sorted-2.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 non_approximable_sorted-0.txt non_approximable_sorted-2.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 non_approximable_sorted-0.txt non_approximable_sorted-2.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    NON_APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    DISTANCE=`python3 $SCRIPT_DIR/float-addition.py $APPROXIMABLE_DISTANCE $NON_APPROXIMABLE_DISTANCE`
    DISTANCE=`python3 $SCRIPT_DIR/float-division-2-dec.py $DISTANCE 2`
    echo -n $DISTANCE >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # Distance of loop breaking run with default trip count 10  with standard run
    STANDARD_ONLY=`comm -2 -3 approximable_sorted-0.txt approximable_sorted-3.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 approximable_sorted-0.txt approximable_sorted-3.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 approximable_sorted-0.txt approximable_sorted-3.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    STANDARD_ONLY=`comm -2 -3 non_approximable_sorted-0.txt non_approximable_sorted-3.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 non_approximable_sorted-0.txt non_approximable_sorted-3.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 non_approximable_sorted-0.txt non_approximable_sorted-3.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    NON_APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    DISTANCE=`python3 $SCRIPT_DIR/float-addition.py $APPROXIMABLE_DISTANCE $NON_APPROXIMABLE_DISTANCE`
    DISTANCE=`python3 $SCRIPT_DIR/float-division-2-dec.py $DISTANCE 2`
    echo -n $DISTANCE >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # Distance of loop breaking run with default trip count 15 with standard run
    STANDARD_ONLY=`comm -2 -3 approximable_sorted-0.txt approximable_sorted-4.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 approximable_sorted-0.txt approximable_sorted-4.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 approximable_sorted-0.txt approximable_sorted-4.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    STANDARD_ONLY=`comm -2 -3 non_approximable_sorted-0.txt non_approximable_sorted-4.txt | wc -l`
    LOOPBREAKING_ONLY=`comm -1 -3 non_approximable_sorted-0.txt non_approximable_sorted-4.txt | wc -l`
    INTERSECTION_ONLY=`comm -1 -2 non_approximable_sorted-0.txt non_approximable_sorted-4.txt | wc -l`
    TOTAL_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY + $INTERSECTION_ONLY)
    DIVERGENCE_SIZE=$(expr $STANDARD_ONLY + $LOOPBREAKING_ONLY)
    NON_APPROXIMABLE_DISTANCE=`python3 $SCRIPT_DIR/float-division.py $DIVERGENCE_SIZE $TOTAL_SIZE`
    DISTANCE=`python3 $SCRIPT_DIR/float-addition.py $APPROXIMABLE_DISTANCE $NON_APPROXIMABLE_DISTANCE`
    DISTANCE=`python3 $SCRIPT_DIR/float-division-2-dec.py $DISTANCE 2`
    echo -n $DISTANCE >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # find_approx.py time for standard run
    USER_MINUTES=`grep user out-0-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f1`
    USER_SECONDS=`grep user out-0-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f2`
    USER_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $USER_MINUTES $USER_SECONDS`
    SYSTEM_MINUTES=`grep sys out-0-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f1`
    SYSTEM_SECONDS=`grep sys out-0-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f2`
    SYSTEM_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $SYSTEM_MINUTES $SYSTEM_SECONDS`
    TOTAL_TIME=`python3 $SCRIPT_DIR/float-addition-rounding.py $USER_TIME $SYSTEM_TIME`
    echo -n $TOTAL_TIME >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # find_approx.py time for run without checking for infeasible path
    USER_MINUTES=`grep user out-1-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f1`
    USER_SECONDS=`grep user out-1-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f2`
    USER_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $USER_MINUTES $USER_SECONDS`
    SYSTEM_MINUTES=`grep sys out-1-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f1`
    SYSTEM_SECONDS=`grep sys out-1-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f2`
    SYSTEM_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $SYSTEM_MINUTES $SYSTEM_SECONDS`
    TOTAL_TIME=`python3 $SCRIPT_DIR/float-addition-rounding.py $USER_TIME $SYSTEM_TIME`
    echo -n $TOTAL_TIME >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # find_approx.py time for run with loop breaking with default trip count 5
    USER_MINUTES=`grep user out-2-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f1`
    USER_SECONDS=`grep user out-2-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f2`
    USER_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $USER_MINUTES $USER_SECONDS`
    SYSTEM_MINUTES=`grep sys out-2-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f1`
    SYSTEM_SECONDS=`grep sys out-2-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f2`
    SYSTEM_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $SYSTEM_MINUTES $SYSTEM_SECONDS`
    TOTAL_TIME=`python3 $SCRIPT_DIR/float-addition-rounding.py $USER_TIME $SYSTEM_TIME`
    echo -n $TOTAL_TIME >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # find_approx.py time for run with loop breaking with default trip count 10
    USER_MINUTES=`grep user out-3-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f1`
    USER_SECONDS=`grep user out-3-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f2`
    USER_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $USER_MINUTES $USER_SECONDS`
    SYSTEM_MINUTES=`grep sys out-3-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f1`
    SYSTEM_SECONDS=`grep sys out-3-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f2`
    SYSTEM_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $SYSTEM_MINUTES $SYSTEM_SECONDS`
    TOTAL_TIME=`python3 $SCRIPT_DIR/float-addition-rounding.py $USER_TIME $SYSTEM_TIME`
    echo -n $TOTAL_TIME >> $EXPERIMENTAL_TABLE
    echo -n "," >> $EXPERIMENTAL_TABLE

    # find_approx.py time for run with loop breaking with default trip count 15
    USER_MINUTES=`grep user out-4-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f1`
    USER_SECONDS=`grep user out-4-time.txt | sed 's/user\t//' | sed 's/s//' | cut -d'm' -f2`
    USER_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $USER_MINUTES $USER_SECONDS`
    SYSTEM_MINUTES=`grep sys out-4-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f1`
    SYSTEM_SECONDS=`grep sys out-4-time.txt | sed 's/sys\t//' | sed 's/s//' | cut -d'm' -f2`
    SYSTEM_TIME=`python3 $SCRIPT_DIR/time-to-seconds.py $SYSTEM_MINUTES $SYSTEM_SECONDS`
    TOTAL_TIME=`python3 $SCRIPT_DIR/float-addition-rounding.py $USER_TIME $SYSTEM_TIME`
    echo -n $TOTAL_TIME >> $EXPERIMENTAL_TABLE

    echo >> $EXPERIMENTAL_TABLE
    popd > /dev/null
done
