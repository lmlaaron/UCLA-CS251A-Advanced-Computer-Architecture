#!/bin/bash

CACHE_TYPE=LIP

GEM5_BASE=~/gem5
SRC_DIR=~/UCLA-CS251-Advanced-Computer-Architecture/HW2_Gem5_Cache_Replacement_Policy/src
RESULT_DIR=/root/UCLA-CS251-Advanced-Computer-Architecture/HW2_Gem5_Cache_Replacement_Policy/result
TARGET=/root/gem5/configs/example/se.py


# Clean up previous result
# rm -rf ${RESULT_DIR}/*
# for CACHE_TYPE in Random NMRU LIP; do
#     for FILE in mm lfsr merge sieve; do
#         mkdir -p ${RESULT_DIR}/${FILE}/${CACHE_TYPE}
#     done
# done
# cd $SRC_DIR && make clean && make && cd $GEM5_BASE

cd $GEM5_BASE

# Baseline: Freq=1GHz, Assoc=2 (default)
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=1GHz --cpu-clock=1GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_1GHz_2Assoc
done

# Freq=2GHz, Assoc=2
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=2GHz --cpu-clock=2GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_2GHz_2Assoc
done

# Freq=1GHz, Assoc=8
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --l1d_assoc=8 --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=1GHz --cpu-clock=1GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_1GHz_8Assoc
done

# Freq=2GHz, Assoc=8
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --l1d_assoc=8 --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=2GHz --cpu-clock=2GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_2GHz_8Assoc
done
