# Course project: RISC-V Vector Extension in Gem5
This is the course project for CS251A. It adds ISA support for RISC-V vector instructions in Gem5.

## Prerequisites
[RISC-V GNU Compiler Toolchain](https://github.com/riscv/riscv-gnu-toolchain)  
[gem5 simulator](http://www.gem5.org/Main_Page)

## Compile and Run
Replace gem5/src/riscv folder and compile gem5:
```
cp -r <PATH_TO_THIS_REPO>/riscv <PATH_TO_GEM5>/src/arch/
scons -j2 build/RISCV/gem5.opt
```
Run testcases (you can specify which benchmark to run in Makefile):
```
make test
```
Or you can compile, assemble, link and run separately:
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

## References
[Gem5 ISA description system](http://gem5.org/ISA_description_system)