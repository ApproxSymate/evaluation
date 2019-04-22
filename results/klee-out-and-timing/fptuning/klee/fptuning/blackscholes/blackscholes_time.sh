ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling --math-calls blackscholes-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: blackscholes $tt milliseconds"
