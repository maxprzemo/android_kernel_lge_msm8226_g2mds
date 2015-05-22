#!/bin/bash
make mrproper && make clean && rm ./arch/arm/boot/dt.img
make kitkat_g2mds_defconfig && make -j3 && ./dtbToolCM -2 -o ./arch/arm/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/
