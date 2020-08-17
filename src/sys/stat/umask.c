#include <sys/types.h>
#include <sys/stat.h>
#include "_syscall.h"

mode_t umask(mode_t cmask)
{
	SYSCALL(umask, mode_t, -1, cmask, 0, 0, 0, 0, 0);
}

/*
POSIX(1)
*/
