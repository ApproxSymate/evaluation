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
    ./run-clean.sh
    ./run.sh
    popd > /dev/null
done
