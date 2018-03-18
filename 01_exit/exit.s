        .section        .data

        .section        .text
        .globl  _start
_start:
        mov $1, %rax
        mov $0, %rbx
        int $0x80
