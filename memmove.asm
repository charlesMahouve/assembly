BITS 64

SECTION .text

GLOBAL memmove

memmove:
        push    rbx
        call    memmove
        pop     rbx
        ret
    