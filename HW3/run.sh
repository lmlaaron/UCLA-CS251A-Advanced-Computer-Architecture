#!/bin/bash

GEM5_BASE=~/gem5
TARGET=/root/gem5/configs/example/se.py
SRC_DIR=$(pwd)

rm -rf result; mkdir result

gcc -S test.c
gcc -o test test.c

cd $GEM5_BASE
build/X86/gem5.opt ${TARGET} \
    --cmd=${SRC_DIR=$(pwd)}/test \
    --cpu-type=DerivO3CPU \
    --l1d_size=64kB --l1i_size=64kB --caches \
    --l2_size=2MB --l2cache \
    --sys-clock=1GHz --cpu-clock=1GHz \
    --mem-type=DDR3_1600_8x8

cp m5out/* ${SRC_DIR}/result