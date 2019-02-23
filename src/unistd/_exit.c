#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

void _exit(int status)
{
	__syscall(((syscall_lookup_t)__libc(SYSCALL_LOOKUP))("exit"), status);
	for (;;);
}
/*
POSIX(1)
*/
