#!/bin/bash

rm -rf klee*
rm -f *.bc

../../../dependencies/llvm-build/Release+Asserts/bin/clang -I ../../../klee/include/ -emit-llvm -c -g imagej.c

../../../klee/Release+Asserts/bin/klee --write-kqueries --approximate imagej.bc

python3 ../../../approximability/find_approx.py --single-path-approximation config.txt
