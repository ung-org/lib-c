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

/* FIXME: this seems to be unpossible to put in a shared library */
/* FIXME: it may be worthwhile to separate this into crt1.s */
.global _start
_start:
	/* TODO */
	call __libc_start
