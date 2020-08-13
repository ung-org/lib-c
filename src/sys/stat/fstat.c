#include "sys/types.h"
#include <sys/stat.h>
#include "_syscall.h"

int fstat(int fildes, struct stat *buf)
{
	SYSCALL(fstat, int, -1, fildes, buf, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
