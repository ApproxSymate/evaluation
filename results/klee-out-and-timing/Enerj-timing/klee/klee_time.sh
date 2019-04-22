#!/bin/bash

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision imagej-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: imagej $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling fft-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: fft $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls --approximate-pointers lu-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: lu $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --math-calls --scaling raytracer-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: raytracer $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling sor-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: sor $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --approximate-pointers sparsematmult-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: sparsematmult $tt milliseconds"
rm -r klee-out-*

ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision montecarlo-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: montecarlo $tt milliseconds"
rm -r klee-out-*



