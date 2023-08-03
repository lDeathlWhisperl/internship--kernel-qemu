#!/bin/bash

LINUX_DIR=$(pwd)

cd build/initrd/
./build_initrd.sh

cd $LINUX_DIR

cd build/kernel
./build_kernel.sh $1
