#!/bin/bash

GEM5_BASE=~/gem5
SRC_DIR=~/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/src
TARGET=~/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/two_level.py

NUM=1

for FILE in mm lfsr merge sieve; do

    cd $SRC_DIR && make clean --silent && make OPT=-O3 --silent && cd $GEM5_BASE

    # Default
    echo [${NUM}/28]: Task 1 [default] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET} --cmd=${SRC_DIR}/${FILE}

    # MinorCPU
    echo [${NUM}/28]: Task 2 [MinorCPU] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET} --cpu_type='MinorCPU' --cmd=${SRC_DIR}/${FILE}

    # -O1
    cd $SRC_DIR && make clean --silent && make OPT=-O1 --silent && cd $GEM5_BASE
    echo [${NUM}/28]: Task 3 [-O1] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET}  --cmd=${SRC_DIR}/${FILE}

    # 4GHz
    cd $SRC_DIR && make clean --silent && make OPT=-O3 --silent && cd $GEM5_BASE
    echo [${NUM}/28]: Task 4 [4GHz] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET} --frequency='4GHz' --cmd=${SRC_DIR}/${FILE}

    # HBM_1000_4H_1x64, DerivO3CPU
    echo [${NUM}/28]: Task 5 [HBM_1000_4H_1x64, DerivO3CPU] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET} --mem_type='HBM_1000_4H_1x64' --cmd=${SRC_DIR}/${FILE}

    # HBM_1000_4H_1x64, MinorCPU
    echo [${NUM}/28]: Task 6 [HBM_1000_4H_1x64, MinorCPU] -\> $FILE
    ((NUM++))
    # build/X86/gem5.opt ${TARGET} --mem_type='HBM_1000_4H_1x64' --cpu_type='MinorCPU' --cmd=${SRC_DIR}/${FILE}

    # No L2 cache
    echo [${NUM}/28]: Task 7 [No L2 cache] -\> $FILE
    ((NUM++))

done