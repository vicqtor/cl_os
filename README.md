# cl_os

**boot/**
nasm -f elf boot.asm -o boot.o
g++ -c kernel.cpp -o kernel.o -ffreestandinng -fno-exceptions -fno-rtti
gcc loader.o kernel.o -T linker.ld -o kern -nostdlib -nodefaultlibs -lgcc

**main dir/**
grub-mkrescue iso --output=kern.iso
