<h4 align = 'center'> a simple command line operating system. for learning purposes </h4>
<hr>
<h4 align = 'left'> how to build
    <br>
    
    - boot
    nasm -f elf boot.asm -o boot.o<br>
    g++ -c kernel.cpp -o kernel.o -ffreestandinng -fno-exceptions -fno-rtti<br>
    gcc loader.o kernel.o -T linker.ld -o kern -nostdlib -nodefaultlibs -lgcc<br>
    
    - main dir
    grub-mkrescue iso --output=kern.iso
    
