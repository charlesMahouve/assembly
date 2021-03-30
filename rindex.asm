SECTION .text

GLOBAL rindex

rindex:
	xor	rax, rax

try:
	mov	cl, byte[rdi]
	cmp	cl, -1
	je	exit
	cmp	cl, sil
	je	return
	cmp	cl, 0
	je	exit
	inc	rdi
	jmp	try

return:
	mov	rax, rdi
	inc	rdi
	cmp	rax, 0
	jne	try

exit:
	ret
