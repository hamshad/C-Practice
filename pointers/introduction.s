	.file	"introduction.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "updateStruct: %d\12\0"
	.text
	.globl	updateStruct
	.def	updateStruct;	.scl	2;	.type	32;	.endef
	.seh_proc	updateStruct
updateStruct:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, 64(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "main: %d\12\0"
.LC2:
	.ascii "malloc failed!\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movl	$4, -28(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	$1852337994, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$20, -32(%rbp)
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	updateStruct
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$100, %ecx
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L3
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L3:
	movl	$0, %eax
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-Builds project) 13.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
