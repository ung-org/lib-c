#include "sys/types.h"
#include <sys/stat.h>
#include "../../_syscall.h"

#ifndef S_IFIFO
#include "S_IFIFO.c"
#endif

int mkfifo(const char *path, mode_t mode)
{
	SYSCALL(mknod, int, -1, path, mode, S_IFIFO, 0, 0, 0);
}
/*
POSIX(1)
*/
