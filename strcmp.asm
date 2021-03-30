BITS 64

SECTION .text

GLOBAL strcmp

strcmp:
        mov     r8, rdi
        mov     rdi, rsi
        mov     ecx, 0
        jmp     .part1
.part3:
        add     ecx, 1
.part1:
        movsx   rdx, ecx
        movzx   eax, BYTE [r8+rdx]
        test    al, al
        je      .part2
        movzx   esi, BYTE [rdi+rdx]
        test    sil, sil
        je      .part2
        cmp     al, sil
        je      .part3
.part2:
        test    al, al
        jne     .part4
        cmp     BYTE [rdi+rdx], 0
        je      .part5
        mov     eax, 0
        ret
.part4:
        mov     eax, 0
        ret
.part5:
        mov     eax, 1
        ret