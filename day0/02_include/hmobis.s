	.file	"hmobis.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "hmobis::led on() called\0"
	.text
	.globl	on_led
	.def	on_led;	.scl	2;	.type	32;	.endef
	.seh_proc	on_led
on_led:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC0(%rip), %rcx
	call	puts
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
