#include <stdarg.h>
#include <stddef.h>
#include <errno.h>
#include <string.h>

#ifndef ENOSYS
#define ENOSYS 62
#endif

extern long __syscall_x86_64(long, ...);
#define __linux_syscall __syscall_x86_64
#define __syscall __linux_syscall

static long __syscall_lookup(const char *call)
{
	const char *__syscalls[] = {
		[0] = "read",
		[1] = "write",
		[2] = "open",
		[3] = "close",
		[4] = "stat",
		[5] = "fstat",
		[6] = "lstat",
		[9] = "mmap",
		[60] = "exit",
		[201] = "time",
	};

	size_t i;
	for (i = 0; i < sizeof(__syscalls) / sizeof(__syscalls[0]); i++) {
		if (__syscalls[i] && !strcmp(__syscalls[i], call)) {
			return i;
		}
	}
	return -1;
}
