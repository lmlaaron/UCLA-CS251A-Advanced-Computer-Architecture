#!/bin/bash

mkdir result
for FILE in mm lfsr merge sieve; do
    # Random
    for TESTCASE in 1GHz_2Assoc 1.5GHz_2Assoc 2GHz_2Assoc 1GHz_8Assoc 1.5GHz_8Assoc 2GHz_8Assoc 1GHz_16Assoc 1.5GHz_16Assoc 2GHz_16Assoc; do
        mkdir -p result/${FILE}/Random_${TESTCASE}
    done

    # NMRU
    for TESTCASE in 1GHz_2Assoc 1.5GHz_2Assoc 2GHz_2Assoc 1GHz_8Assoc 1.5GHz_8Assoc 2GHz_8Assoc; do
        mkdir -p result/${FILE}/NMRU_${TESTCASE}
    done

    #LIP
    for TESTCASE in 1GHz_2Assoc 1.5GHz_2Assoc 1GHz_8Assoc 1.5GHz_8Assoc; do
        mkdir -p result/${FILE}/LIP_${TESTCASE}
    done
done