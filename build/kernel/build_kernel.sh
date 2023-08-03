#!/bin/bash

cd linux* 2>~/../../dev/null

if [ "$?" -ne 0 ]
then
	echo "kernel: directory does not exist"
	exit
fi

make defconfig
make -j$1 

if [ "$?" -ne 0 ]
then
	echo 'something went wrong'
	exit

fi
cp arch/x86_64/boot/bzImage ../../kernel
