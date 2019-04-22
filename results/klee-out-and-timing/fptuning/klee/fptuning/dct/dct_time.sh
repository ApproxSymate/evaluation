ts=$(date +%s%N)
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
/home/himeshi/approx/klee/klee/Release+Asserts/bin/klee --write-kqueries --precision --scaling dct-symbolic.bc
tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time taken: cg $tt milliseconds"
