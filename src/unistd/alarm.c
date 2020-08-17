#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include "_syscall.h"

unsigned alarm(unsigned seconds)
{
	SYSCALL(alarm, unsigned, 0, seconds, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
