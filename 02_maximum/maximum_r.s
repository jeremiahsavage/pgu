        .section        .data

data_items:
        .quad   3,67,23,222,45,75,54,34,44,33,22,11,66,0

        .section        .text
        .globl _start
_start:
        movq $0, %rdi
        movq data_items(,%rdi,8), %rax
        movq %rax, %rbx

start_loop:
        cmpq $0, %rax
        je loop_exit
        incq %rdi
        movq data_items(,%rdi,8), %rax
        cmpq %rbx, %rax
        jle start_loop
        movq %rax, %rbx
        jmp start_loop

loop_exit:
        movq $1, %rax
        int $0x80
