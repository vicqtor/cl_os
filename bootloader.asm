;boot.asm:
[bits 32] ; 32 bit
global start ;start's os, call in linker script
extern _kernel_main ; in .cpp, kernel main function
;do not modify
section .mbHeader

align 0x4
 
; Multiboot header
MODULEALIGN equ  1<<0                   ; align loaded modules on page boundaries
MEMINFO     equ  1<<1                   ; provide memory map
FLAGS       equ  MODULEALIGN | MEMINFO  ; Multiboot 'flag' field
MAGIC       equ    0x1BADB002           ; 'magic number' bootloader finding header
CHECKSUM    equ -(MAGIC + FLAGS)        ; checksum required
 
MultiBootHeader:
   dd MAGIC
   dd FLAGS
   dd CHECKSUM
 
; modifyable
start:
push ebx ; optional, load's grub structure
call _kernel_main
