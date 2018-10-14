Simple Example Microbenchmarks

A few simple microbenchmarks for you to test.

Note that some of the benchmarks do something useful, but others do not.  The
beauty of microbenchmarks is that they don't have to be meaningful, just evoke
interesting behavior in the microarchitecture.

# Build Instructions:

To compile, just use gcc.  They don't have any command line options when running.

# Input Generation

One of the benchmarks requires a random array (randArr.h) to be used as an input.  Lets use the following dataset:

```
python rand_c_arr.py --len=8192 --range=1000000
```

