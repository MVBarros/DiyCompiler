; TEXT
segment	.text
; ALIGN
align	4
; GLOBL
global	$_entry:function
; LABEL
$_entry:
; ENTER
	push	ebp
	mov	ebp, esp
	sub	esp, 12
; IMM
	push	dword 2
; COPY
	push	dword [esp]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; TRASH
	add	esp, 4
; IMM
	push	dword 3
; COPY
	push	dword [esp]
; LOCAL
	lea	eax, [ebp+-8]
	push	eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 1
; GT
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setg	cl
	mov	[esp], ecx
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 5
; LT
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setl	cl
	mov	[esp], ecx
; AND
	pop	eax
	and	dword [esp], eax
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i1
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i2:
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x20
; CHAR
	db	0x69
; CHAR
	db	0x66
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i2
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; JMP
	jmp	dword $_i3
; LABEL
$_i1:
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i4:
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x20
; CHAR
	db	0x65
; CHAR
	db	0x6C
; CHAR
	db	0x73
; CHAR
	db	0x65
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i4
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; LABEL
$_i3:
; LABEL
$_i5:
; IMM
	push	dword 3
; COPY
	push	dword [esp]
; LOCAL
	lea	eax, [ebp+-8]
	push	eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; TRASH
	add	esp, 4
; LABEL
$_i7:
; IMM
	push	dword 3
; COPY
	push	dword [esp]
; LOCAL
	lea	eax, [ebp+-12]
	push	eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; TRASH
	add	esp, 4
; LABEL
$_i9:
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i11:
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x6E
; CHAR
	db	0x65
; CHAR
	db	0x72
; CHAR
	db	0x20
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x6E
; CHAR
	db	0x65
; CHAR
	db	0x72
; CHAR
	db	0x20
; CHAR
	db	0x66
; CHAR
	db	0x6F
; CHAR
	db	0x72
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i11
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-12]
	push	eax
; COPY
	push	dword [esp]
; LOAD
	pop	eax
	push	dword [eax]
; SWAP
	pop	eax
	pop	ecx
	push	eax
	mov	eax, ecx
	push	eax
; INCR
	pop	eax
	add	dword [eax], 1
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 5
; LT
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setl	cl
	mov	[esp], ecx
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i9
; LABEL
$_i10:
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i12:
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x6E
; CHAR
	db	0x65
; CHAR
	db	0x72
; CHAR
	db	0x20
; CHAR
	db	0x20
; CHAR
	db	0x66
; CHAR
	db	0x6F
; CHAR
	db	0x72
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i12
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-8]
	push	eax
; COPY
	push	dword [esp]
; LOAD
	pop	eax
	push	dword [eax]
; SWAP
	pop	eax
	pop	ecx
	push	eax
	mov	eax, ecx
	push	eax
; INCR
	pop	eax
	add	dword [eax], 1
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 10
; LT
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setl	cl
	mov	[esp], ecx
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i7
; LABEL
$_i8:
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i13:
; CHAR
	db	0x65
; CHAR
	db	0x78
; CHAR
	db	0x74
; CHAR
	db	0x65
; CHAR
	db	0x72
; CHAR
	db	0x69
; CHAR
	db	0x6F
; CHAR
	db	0x72
; CHAR
	db	0x20
; CHAR
	db	0x66
; CHAR
	db	0x6F
; CHAR
	db	0x72
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i13
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; COPY
	push	dword [esp]
; LOAD
	pop	eax
	push	dword [eax]
; SWAP
	pop	eax
	pop	ecx
	push	eax
	mov	eax, ecx
	push	eax
; INCR
	pop	eax
	add	dword [eax], 1
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 7
; LT
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setl	cl
	mov	[esp], ecx
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i5
; LABEL
$_i6:
; RODATA
segment	.rodata
; ALIGN
align	4
; LABEL
$_i14:
; CHAR
	db	0x6E
; CHAR
	db	0x6F
; CHAR
	db	0x74
; CHAR
	db	0x20
; CHAR
	db	0x69
; CHAR
	db	0x6E
; CHAR
	db	0x20
; CHAR
	db	0x66
; CHAR
	db	0x6F
; CHAR
	db	0x72
; CHAR
	db	0x0A
; CHAR
	db	0x00
; TEXT
segment	.text
; ADDR
	push	dword $_i14
; CALL
	call	$_prints
; TRASH
	add	esp, 4
; IMM
	push	dword 0
; COPY
	push	dword [esp]
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; POP
	pop	eax
; LEAVE
	leave
; RET
	ret
; EXTRN
extern	$_println
; EXTRN
extern	$_prints
; EXTRN
extern	$_printi
