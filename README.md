# Evaluation

Contains approximability benchmarks and evaluation results.
Use the shell file in each of the benchmarks folder to run 
the benchmark completely (paths may need to be updated accordingly).

Additionally a docker image with everything built and installed can be obtained by `docker pull himeship/approxsymate:v3`. Once the docker image has been obtained,
1. Run the image with `docker run -ti --cpus=<N> himeship/approxsymate:v3`. Replace N with the number of cpus that will be allocated to this contianer.
2. `cd /home/approxsymate`. Here you will find Klee and the sensivity analysis of ApproxSymate installed.

To run a benchmark, for example montecarlo, execute the following,
1. `cd /home/approxsymate/benchmarks/Enerj/montecarlo`
2. `./run_montecarlo.sh`
