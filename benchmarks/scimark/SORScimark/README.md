`klee-out-1` was created by the following run:
```
klee --write-kqueries --precision -no-branch-check -max-time=1 sor.bc
```
`klee-out-2` was created by the following run:
```
klee --write-kqueries --precision --loop-breaking -default-trip-count=5 sor.bc
```
`klee-out-3` was created by the following run:
```
klee --write-kqueries --precision --loop-breaking -default-trip-count=10 sor.bc
```
`klee-out-4` was created by the following run:
```
klee --write-kqueries --precision --loop-breaking -default-trip-count=15 sor.bc
```
