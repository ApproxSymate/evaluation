#!/bin/bash

rm -rf klee*
rm -f *.bc

../../../dependencies/llvm-build/Release+Asserts/bin/clang -I ../../../klee/include/ -emit-llvm -c -g blackscholes.c

../../../klee/Release+Asserts/bin/klee --write-kqueries --approximate --scaling --math-calls blackscholes.bc

sed -i -f script.sed klee-last/test000002.expressions

sed -i -f script.sed klee-last/test000002.kquery_error

python3 ../../../approximability/find_approx.py --single-path-approximation config.txt
