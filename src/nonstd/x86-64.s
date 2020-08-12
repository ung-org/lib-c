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

.global _start
_start:
	popq %rdi
	movq %rsp, %rsi
	call __libc_start

.global __stack_chk_fail
__stack_chk_fail:
	ret
