#ifndef _XOPEN_SOURCE
#define _XOPEN_SOURCE 1
#endif

#include <sys/types.h>
#include <sys/stat.h>
#include "_syscall.h"

int mkfifo(const char *path, mode_t mode)
{
	SYSCALL(mknod, int, -1, path, mode, S_IFIFO, 0, 0, 0);
}

/*
POSIX(1)
*/
