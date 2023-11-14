#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include "_syscall.h"

void _exit(int status)
{
	long scno = __syscall_lookup(exit);
	for (;;) {
		__syscall(scno, status);
	}
}
/*
POSIX(1)
*/


#endif
