#include <time.h>
#include <utime.h>
#include "_syscall.h"

int utime(const char *path, const struct utimbuf *times)
{
	SYSCALL(utime, int, -1, path, times, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
