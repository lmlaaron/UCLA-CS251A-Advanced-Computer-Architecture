#!/bin/bash

/root/gem5/build/X86/gem5.opt --debug-flags=Nmru /root/gem5/configs/example/se.py \
    --cmd=/root/UCLA-CS251-Advanced-Computer-Architecture/HW1_Gem5_Intro/src/mm \
    --cpu-type=DerivO3CPU \
    --l1d_size=64kB --l1i_size=64kB --caches \
    --l2_size=2MB --l2cache \
    --sys-clock=1GHz --cpu-clock=1GHz \
    --mem-type=DDR3_1600_8x8 \