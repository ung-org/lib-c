#include "sys/types.h"
#include <fcntl.h>
#include "sys/stat.h"	/* OH */
#include "errno.h"
#include "stdarg.h"
#include "../_syscall.h"

int open(const char *path, int oflag, ...)
{
	SYSCALL_NUMBER(scno, open, -1);

	mode_t mode = 0;
	if (oflag & O_CREAT) {
		va_list ap;
		va_start(ap, oflag);
		mode = va_arg(ap, mode_t);
		va_end(ap);
	}

	int r = __syscall(scno, path, oflag, mode);
	if (r < 0) {
		errno = -r;
		return -1;
	}

	return r;
}
/*
POSIX(1)
*/
