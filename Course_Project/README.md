# Course project
This is the course project for CS251A. It adds ISA support for RISC-V vector instructions.

## Prerequisites
[RISC-V GNU Compiler Toolchain](https://github.com/riscv/riscv-gnu-toolchain)  
[gem5 simulator](http://www.gem5.org/Main_Page)

## Compile and Run
If using libraries, you need to disable dynamic linking during cross-compilation:
```
riscv64-unknown-elf-gcc -static -o test test.c
~/gem5/build/RISCV/gem5.opt ~/gem5/configs/example/se.py --cmd=test
```

## Compile, assemble and link separately:
```
riscv64-unknown-elf-gcc -S test.c -o test.s
riscv64-unknown-elf-as test.s -o test.o
riscv64-unknown-elf-gcc test.o -o test
~/gem5/build/RISCV/gem5.opt ~/gem5/configs/example/se.py --cmd=test
```

## Issues
On machines with gcc version < 5.0.0, gem5 compilation may fail. You can checkout the following branch and then compile:
```
fd294813c443fc1e80ed77a76b172d7103cb3fbf
```