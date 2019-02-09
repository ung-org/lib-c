#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int isatty(int fildes)
{
	SCNO(scno, "isatty", 0);
	int r = __libc.syscall(scno, fildes);
	if (r < 0) {
		errno = -r;
		return 0;
	}
	return r;
}
/*
POSIX(1)
*/
