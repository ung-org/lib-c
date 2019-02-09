#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

void _exit(int status)
{
	__libc.syscall(__libc.syscall_lookup("exit"), status);
	for (;;);
}
/*
POSIX(1)
*/
