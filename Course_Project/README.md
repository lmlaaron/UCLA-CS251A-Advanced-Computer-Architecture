# Course project
This is the course project for CS251A. It adds ISA support for RISC-V vector instructions.

## Prerequisites
RISC-V GNU Compiler Toolchaino
gem5

## Run
To simulate RISC-V exectable in gem5, you need to disable dynamic linking during compilation:
```
riscv64-unknown-linux-gnu-gcc -static -o test test.c
```
To run executable in gem5:
```
build/RISCV/gem5.opt configs/example/se.py --cmd=test
```