#include "sys/types.h"
#include <sys/stat.h>
#include "../../_syscall.h"

int mkdir(const char *path, mode_t mode)
{
	SYSCALL(mkdir, int, -1, path, mode, 0, 0, 0, 0);
}

/*
POSIX(1)
*/
