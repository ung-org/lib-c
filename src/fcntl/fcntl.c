#include "sys/types.h"
#include <fcntl.h>
#include "errno.h"
#include "stdarg.h"
#include "nonstd/types.h"
#include "nonstd/syscall.h"

int fcntl(int fildes, int cmd, ...)
{
	SCNO(scno, "fcntl", -1);

	int r = -ENOSYS;
	enum { NONE, INT, FLOCK } arg = NONE;

	switch (cmd) {
	case F_GETFD:
	case F_GETFL:
		break;

	case F_DUPFD:
	case F_SETFD:
	case F_SETFL:
		arg = INT;
		break;

	case F_GETLK:
	case F_SETLK:
	case F_SETLKW:
		arg = FLOCK;
		break;

	default:
		errno = EINVAL;
		return -1;
	}

	if (arg == NONE) {
		r = __libc.syscall(scno, fildes);
	} else {
		va_list ap;
		va_start(ap, cmd);
		if (arg == INT) {
			int n = va_arg(ap, int);
			r = __libc.syscall(scno, fildes, n);
		} else if (arg == FLOCK) {
			struct flock *fl = va_arg(ap, struct flock *);
			r = __libc.syscall(scno, fildes, fl);
		}
		va_end(ap);
	}

	if (r < 0) {
		errno = -r;
		return -1;
	}

	return r;
}
/*
POSIX(1)
*/
