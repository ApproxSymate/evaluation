# Evaluation

Contains approximability benchmarks and evaluation results.
Use `run-all.sh` to execute the whole experiment. Each benchmark
is executed five times:

* A standard one where KLEE is run with basically just the
  `--precision` option and with timeout of 1 minute. Note that the
  first standard run is without timeout and therefore uses the most
  information. The result of the run is stored in `out-0.txt` in the
  benchmark directory. `out-0-time.txt` records the running time of 
  `find_approx.py`.

* A run ignoring infeasible path with `--no-branch-check` option
  provided to KLEE and timeout of 1 second. Disabling infeasible path
  checking results rapid path blowup and hence the timeout. Default
  random path interleaved with `nurs:covnew` strategy is used for KLEE
  ensures that the generated test cases are not necessarily close
  neighbors within the same section of the symbolic execution tree,
  even though the timeout is just 1 second. The result of the run
  is stored in the `out-1.txt` directory. `out-1-time.txt` records the
  running time of `find_approx.py`.

* Three runs with loop breaking and with default trip count set to 5,
  10, and 15, and with timeout of 1 minute (`--loop-breaking`
  `--default-trip-count=<N>`). The timeout here is to limit the blowup
  in running time due to more expensive constraint solving. Therefore,
  these three runs supposedly have less information as compared to the
  first run, making the comparison with the first run, when the
  results of these three runs are better is still valid. The results
  of these runs are stored in respectively `out-2.txt`, `out-3.txt`,
  and `out-4.txt` in the benchmark directories. `out-2-time.txt`,
  `out-3-time.txt`, and `out-4-time.txt` record the respective running
  times of `find_approx.py`.
