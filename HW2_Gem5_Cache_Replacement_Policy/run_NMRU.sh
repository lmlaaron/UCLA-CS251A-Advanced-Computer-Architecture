#!/bin/bash

CACHE_TYPE=NMRU

GEM5_BASE=~/gem5
SRC_DIR=~/UCLA-CS251-Advanced-Computer-Architecture/HW2_Gem5_Cache_Replacement_Policy/src
RESULT_DIR=/root/UCLA-CS251-Advanced-Computer-Architecture/HW2_Gem5_Cache_Replacement_Policy/result
TARGET=/root/gem5/configs/example/se.py


cd $GEM5_BASE
INDEX=1

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

# Freq=1.5GHz, Assoc=2
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=1.5GHz --cpu-clock=1.5GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_1.5GHz_2Assoc
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

# Freq=1.5GHz, Assoc=8
for FILE in mm lfsr merge sieve; do
    echo [${INDEX}/16]
    ((INDEX++))
    build/X86/gem5.opt --debug-flags=Nmru ${TARGET} \
        --cmd=${SRC_DIR}/${FILE} \
        --cpu-type=DerivO3CPU \
        --l1d_size=64kB --l1i_size=64kB --l1d_assoc=8 --caches \
        --l2_size=2MB --l2cache \
        --sys-clock=1.5GHz --cpu-clock=1.5GHz \
        --mem-type=DDR3_1600_8x8
    cp m5out/* ${RESULT_DIR}/${FILE}/${CACHE_TYPE}_1.5GHz_8Assoc
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