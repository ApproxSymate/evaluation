#!/usr/bin/env bash

# Timeout of 60 seconds
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

for BENCHMARK in $BENCHMARK_DIRS ; do
    pushd $SCRIPT_DIR/$BENCHMARK > /dev/null
    ./run-clean.sh
    popd > /dev/null
done

