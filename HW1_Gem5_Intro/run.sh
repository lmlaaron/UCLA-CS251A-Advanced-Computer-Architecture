#!/bin/bash

GEM5_BASE=~/gem5
SRC_DIR=~/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/src
RESULT_DIR=~/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/result
TARGET=~/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/two_level.py

NUM=1

# Clean result dir
rm -rf ${RESULT_DIR}/*
for FILE in mm lfsr merge sieve; do
    mkdir -p ${RESULT_DIR}/${FILE}
done

for FILE in mm lfsr merge sieve; do
# for FILE in mm; do

    cd $SRC_DIR && make clean --silent && make OPT=-O3 --silent && cd $GEM5_BASE

    # Default
    echo [${NUM}/28]: Task 1 [default] -\> $FILE
    build/X86/gem5.opt ${TARGET} --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/1_default/
    ((NUM++))

    # MinorCPU
    echo [${NUM}/28]: Task 2 [MinorCPU] -\> $FILE
    build/X86/gem5.opt ${TARGET} --cpu_type='MinorCPU' --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/2_MinorCPU/
    ((NUM++))

    # -O1
    cd $SRC_DIR && make clean --silent && make OPT=-O1 --silent && cd $GEM5_BASE
    echo [${NUM}/28]: Task 3 [-O1] -\> $FILE
    build/X86/gem5.opt ${TARGET}  --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/3_O1/
    ((NUM++))

    # 4GHz
    cd $SRC_DIR && make clean --silent && make OPT=-O3 --silent && cd $GEM5_BASE
    echo [${NUM}/28]: Task 4 [4GHz] -\> $FILE
    build/X86/gem5.opt ${TARGET} --frequency='4GHz' --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/4_4GHz/
    ((NUM++))

    # HBM_1000_4H_1x64, DerivO3CPU
    echo [${NUM}/28]: Task 5 [HBM_1000_4H_1x64, DerivO3CPU] -\> $FILE
    build/X86/gem5.opt ${TARGET} --mem_type='HBM_1000_4H_1x64' --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/5_HBM_DerivO3/
    ((NUM++))

    # HBM_1000_4H_1x64, MinorCPU
    echo [${NUM}/28]: Task 6 [HBM_1000_4H_1x64, MinorCPU] -\> $FILE
    build/X86/gem5.opt ${TARGET} --mem_type='HBM_1000_4H_1x64' --cpu_type='MinorCPU' --cmd=${SRC_DIR}/${FILE}
    cp -r m5out/ ${RESULT_DIR}/${FILE}/6_HBM_Minor/
    ((NUM++))

    # No L2 cache
    echo [${NUM}/28]: Task 7 [No L2 cache] -\> $FILE
    build/X86/gem5.opt ${TARGET} --cmd=${SRC_DIR}/${FILE} --disable_l2
    cp -r m5out/ ${RESULT_DIR}/${FILE}/7_no_l2
    ((NUM++))

done