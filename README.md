<h4 align = 'center'> cl_os
    <br>
    a simple command line operating system. for learning purposes
</h4>
<hr>
<h4 align = 'center'> build </h4>
<hr>
<h4>
    # boot/<br>
    nasm -f elf boot.asm -o boot.o<br>
    g++ -c kernel.cpp -o kernel.o -ffreestandinng -fno-exceptions -fno-rtti<br>
    gcc loader.o kernel.o -T linker.ld -o kern -nostdlib -nodefaultlibs -lgcc<br>
    <br>
    # main dir/<br>
    grub-mkrescue iso --output=kern.iso
