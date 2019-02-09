#include "sys/types.h"
#include <sys/stat.h>
#include "nonstd/syscall.h"

int chmod(const char *path, mode_t mode)
{
	SCNO(scno, "chmod", -1);
	int r = __libc.syscall(scno, path, mode);
	if (r < 0) {
		errno = -r;
		return -1;
	}
	return 0;
}
/*
POSIX(1)
*/
