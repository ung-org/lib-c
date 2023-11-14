#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include "_syscall.h"

int chdir(const char *path)
{
	SYSCALL(chdir, int, -1, path, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
