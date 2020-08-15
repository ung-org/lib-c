.global __syscall
__syscall:
	mov 4(%esp),  %eax
	mov 8(%esp),  %ebx
	mov 12(%esp), %ecx
	mov 16(%esp), %edx
	mov 20(%esp), %esi
	mov 24(%esp), %edi
	mov 28(%esp), %ebp
	sysenter
	ret

.global _start
_start:
	/* TODO */
	call __libc_start
