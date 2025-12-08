	.file	"hw3.c"
	.text
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L7:
	movl	$0, -12(%rbp)
	jmp	.L3
.L6:
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	imull	%ecx, %eax
	addl	%eax, -4(%rbp)
	addl	$1, -16(%rbp)
.L4:
	cmpl	$2, -16(%rbp)
	jle	.L5
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	(%rax,%rcx), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, -64(%rbp,%rdx,4)
	addl	$1, -12(%rbp)
.L3:
	cmpl	$2, -12(%rbp)
	jle	.L6
	addl	$1, -8(%rbp)
.L2:
	cmpl	$2, -8(%rbp)
	jle	.L7
	movl	$0, -20(%rbp)
	jmp	.L8
.L11:
	movl	$0, -24(%rbp)
	jmp	.L9
.L10:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-64(%rbp,%rax,4), %edx
	movl	-24(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
	addl	$1, -24(%rbp)
.L9:
	cmpl	$2, -24(%rbp)
	jle	.L10
	addl	$1, -20(%rbp)
.L8:
	cmpl	$2, -20(%rbp)
	jle	.L11
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L14
.L17:
	movl	$0, -8(%rbp)
	jmp	.L15
.L16:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	addl	%eax, %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	%ecx, -64(%rbp,%rax,4)
	addl	$1, -8(%rbp)
.L15:
	cmpl	$2, -8(%rbp)
	jle	.L16
	addl	$1, -4(%rbp)
.L14:
	cmpl	$2, -4(%rbp)
	jle	.L17
	movl	$0, -12(%rbp)
	jmp	.L18
.L21:
	movl	$0, -16(%rbp)
	jmp	.L19
.L20:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-64(%rbp,%rax,4), %edx
	movl	-16(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
	addl	$1, -16(%rbp)
.L19:
	cmpl	$2, -16(%rbp)
	jle	.L20
	addl	$1, -12(%rbp)
.L18:
	cmpl	$2, -12(%rbp)
	jle	.L21
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matadd, .-matadd
	.section	.rodata
.LC0:
	.string	"A*B+A = |"
.LC1:
	.string	"%c = |"
.LC2:
	.string	"        ["
.LC3:
	.string	"    ["
.LC4:
	.string	" %d "
.LC5:
	.string	"%d"
.LC6:
	.string	"|"
.LC7:
	.string	"]"
	.text
	.globl	print
	.type	print, @function
print:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L24
.L35:
	cmpl	$1, -4(%rbp)
	jne	.L25
	cmpb	$80, -28(%rbp)
	jne	.L26
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L27
.L26:
	movsbl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	jmp	.L27
.L25:
	cmpb	$80, -28(%rbp)
	jne	.L28
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L27
.L28:
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L27:
	movl	$0, -8(%rbp)
	jmp	.L29
.L32:
	cmpl	$1, -8(%rbp)
	jne	.L30
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L31
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L31:
	addl	$1, -8(%rbp)
.L29:
	cmpl	$2, -8(%rbp)
	jle	.L32
	cmpl	$1, -4(%rbp)
	jne	.L33
	movl	$.LC6, %edi
	call	puts
	jmp	.L34
.L33:
	movl	$.LC7, %edi
	call	puts
.L34:
	addl	$1, -4(%rbp)
.L24:
	cmpl	$2, -4(%rbp)
	jle	.L35
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	print, .-print
	.section	.rodata
.LC8:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$1, -96(%rbp)
	movl	$2, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$3, -84(%rbp)
	movl	$4, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$6, -68(%rbp)
	movl	$7, -64(%rbp)
	leaq	-48(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	print
	movl	$.LC8, %edi
	call	puts
	leaq	-96(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	print
	movl	$.LC8, %edi
	call	puts
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	leaq	-96(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	print
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240801 (Red Hat 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
