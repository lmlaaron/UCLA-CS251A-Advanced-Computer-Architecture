	.file	"test.c"
	.text
	.globl	subtract
	.type	subtract, @function
subtract:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-20(%rbp), %xmm0
	flds	-24(%rbp)
	movss	%xmm0, -28(%rbp)
	flds	-28(%rbp)
#APP
# 6 "test.c" 1
	fsubr %st(1), %st
# 0 "" 2
#NO_APP
	fstp	%st(1)
	fstps	-4(%rbp)
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	subtract, .-subtract
	.section	.rodata
.LC4:
	.string	"%f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movl	-12(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	call	subtract
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1080033280
	.align 4
.LC3:
	.long	1071225242
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
