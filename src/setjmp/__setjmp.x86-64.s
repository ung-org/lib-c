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
