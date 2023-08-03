#!/bin/bash

cd busybox* 2>~/../../dev/null

if [ "$?" -ne 0 ]
then
	echo "initrd: directory does not exist"
	exit
fi

make defconfig
cp busybox ../fs
cd ../fs

mkdir bin dev proc sys
cd bin
mv ../busybox .

for prog in $(./busybox --list)
do 
	ln -s /bin/busybox $prog
done

cd ..
find . | cpio -o -H newc > ../../../initrd.img
