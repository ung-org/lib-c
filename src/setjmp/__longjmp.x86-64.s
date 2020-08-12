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
