#!/bin/bash

while true
do
    if [ -f ./buildscriptallow.cc ]
    then
        echo "buildscriptallow.cc found, running command"
        mkdir -p out && make O=out clean && make O=out mrproper && make O=out a52sxq_eur_open_defconfig && make O=out -j$(nproc --all)
        break
    else
        echo "buildscriptallow.cc not found, sleeping for 1 minute"
        sleep 60
    fi
done
