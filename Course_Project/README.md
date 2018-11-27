# Course project
This is the course project for CS251A. It adds ISA support for RISC-V vector instructions.

## Prerequisites
[RISC-V GNU Compiler Toolchain](https://github.com/riscv/riscv-gnu-toolchain)  
[gem5 simulator](http://www.gem5.org/Main_Page)

## Run
To simulate RISC-V exectable in gem5, you need to disable dynamic linking during cross-compilation:
```
riscv64-unknown-linux-gnu-gcc -static -o test test.c
```
To run executable in gem5:
```
build/RISCV/gem5.opt configs/example/se.py --cmd=test
```

## Issues
On machines with gcc version < 5.0.0, gem5 compilation may fail. You can checkout the following branch and then compile:
```
fd294813c443fc1e80ed77a76b172d7103cb3fbf
```
