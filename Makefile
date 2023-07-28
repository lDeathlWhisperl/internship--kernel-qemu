all:
	qemu-system-x86_64 -kernel kernel -initrd initrd.img -nographic -append 'console=ttyS0'
