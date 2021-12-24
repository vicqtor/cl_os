<h4 align = 'center'> a simple command line operating system. for learning purposes </h4>
<hr>
how to build
    
    
<code>boot</code>
```
nasm -f elf boot.asm -o boot.o
g++ -c kernel.cpp -o kernel.o -ffreestandinng -fno-exceptions -fno-rtti
gcc loader.o kernel.o -T linker.ld -o kern -nostdlib -nodefaultlibs -lgcc
```

<code>main dir</code>
```
grub-mkrescue iso --output=kern.iso
```
    
