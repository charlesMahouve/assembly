strncmp:
        mov     r8d, edx
        mov     eax, 0
.part1:
        cmp     eax, r8d
        jg      .part9
        movsx   rdx, eax
        movzx   ecx, BYTE [rdi+rdx]
        movzx   edx, BYTE [rsi+rdx]
        cmp     cl, dl
        je      .part2
        jg      .part6
.part2:
        cmp     cl, dl
        je      .part3
        jge     .part3
        mov     eax, -1
        ret
.part4:
        movzx   ecx, BYTE [rsi+rcx]
        cmp     dl, cl
        je      .part5
        jle     .part5
        cmp     r8d, eax
        jge     .part7
.part5:
        cmp     dl, cl
        je      .part3
        jge     .part3
        cmp     r8d, eax
        jge     .part8
.part3:
        movsx   rdx, eax
        movzx   ecx, BYTE [rsi+rdx]
        cmp     BYTE [rdi+rdx], cl
        jne     .part1
        cmp     eax, r8d
        jg      .part1
        add     eax, 1
        movsx   rcx, eax
        movzx   edx, BYTE [rdi+rcx]
        test    dl, dl
        jne     .part4
        cmp     BYTE [rsi+rcx], 0
        jne     .part4
        cmp     r8d, eax
        jne     .part4
        mov     eax, 0
        ret
.part9:
        mov     eax, 0
        ret
.part6:
        mov     eax, 1
        ret
.part7:
        mov     eax, 1
        ret
.part8:
        mov     eax, -1
        ret