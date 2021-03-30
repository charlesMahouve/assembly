strcspn:
        mov     r8, rsi
        movzx   ecx, BYTE [rdi]
        mov     rsi, rdi
.part1:
        test    cl, cl
        je      .part4
        mov     rdx, r8
        jmp     .part5
.part2:
        add     rdx, 1
.part5:
        movzx   eax, BYTE [rdx]
        test    al, al
        je      .L9
        cmp     al, cl
        jne     .part2
        mov     rax, rsi
        sub     rax, rdi
        ret
.L9:
        add     rsi, 1
        movzx   ecx, BYTE [rsi]
        jmp     .part1
.part4:
        mov     rax, rsi
        sub     rax, rdi
        ret