#include <sys/types.h>
#include <sys/stat.h>
#include "_syscall.h"

int chmod(const char *path, mode_t mode)
{
	SYSCALL(chmod, int, -1, path, mode, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
