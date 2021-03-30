BITS 64

SECTION .text

GLOBAL strchr

strchr:
        mov     rax, rdi
.part2:
        movzx   edx, BYTE [rax]
        movsx   ecx, dl
        cmp     ecx, esi
        je      .part1
        add     rax, 1
        test    dl, dl
        jne     .part2
        mov     eax, 0
.part1:
        ret