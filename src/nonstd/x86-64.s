.global __syscall
__syscall:
	mov %rdi, %rax
	mov %rsi, %rdi
	mov %rdx, %rsi
	mov %rcx, %rdx
	mov %r8,  %r10
	mov %r9,  %r8
	mov 8(%rsp), %r9
	syscall
	ret

/* FIXME: this seems to be unpossible to put in a shared library */
/* FIXME: it may be worthwhile to separate this into crt1.s */
.global _start
_start:
	popq %rdi
	movq %rsp, %rsi
	call __libc_start
