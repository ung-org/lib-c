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

.global __setjmp
__setjmp:
	/* setjmp() in C sets env[0] to 0 */
	mov %rbx, 0x08(%rdi)
	mov %rcx, 0x10(%rdi)
	mov %rdx, 0x18(%rdi)
	mov %rsp, 0x20(%rdi)
	mov %rbp, 0x28(%rdi)
	mov %rsi, 0x30(%rdi)
	mov %rdi, 0x38(%rdi)
	mov %r8,  0x40(%rdi)
	mov %r9,  0x48(%rdi)
	mov %r10, 0x50(%rdi)
	mov %r11, 0x58(%rdi)
	mov %r12, 0x60(%rdi)
	mov %r13, 0x68(%rdi)
	mov %r14, 0x70(%rdi)
	mov %r15, 0x78(%rdi)
	mov 0x00(%rbp), %rax
	mov %rax, 0x80(%rdi)
	mov 0x08(%rbp), %rax
	mov %rax, 0x88(%rdi)
	mov 0x00(%rsp), %rax
	mov %rax, 0x90(%rdi)
	xor %rax, %rax
	ret

.global __longjmp
__longjmp:
	mov %rdi, %rax
	mov 0x08(%rax), %rbx
	mov 0x18(%rax), %rdx
	mov 0x20(%rax), %rsp
	mov 0x28(%rax), %rbp
	mov 0x30(%rax), %rsi
	mov 0x38(%rax), %rdi
	mov 0x40(%rax), %r8
	mov 0x48(%rax), %r9
	mov 0x50(%rax), %r10
	mov 0x58(%rax), %r11
	mov 0x60(%rax), %r12
	mov 0x68(%rax), %r13
	mov 0x70(%rax), %r14
	mov 0x78(%rax), %r15
	mov 0x80(%rax), %rcx
	mov %rcx, 0x00(%rbp)
	mov 0x88(%rax), %rcx
	mov %rcx, 0x08(%rbp)
	mov 0x90(%rax), %rcx
	mov %rcx, 0x00(%rsp)
	mov 0x10(%rax), %rcx
	mov 0x00(%rax), %rax
	ret

/* FIXME: this seems to be unpossible to put in a shared library */
/* FIXME: it may be worthwhile to separate this into crt1.s */
.global _start
_start:
	popq %rdi
	movq %rsp, %rsi
	call __libc_start
