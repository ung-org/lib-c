#if 0

#include "_syscall.h"

int rmdir(const char *path)
{
	SYSCALL(rmdir, int, -1, path, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
