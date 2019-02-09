#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "fcntl.h"
#include "limits.h"
#include "errno.h"

int dup2(int fildes, int fildes2)
{
	if (fildes2 < 0 || fildes2 >= _POSIX_OPEN_MAX) {
		errno = EBADF;
		return -1;
	}

	if (fildes == fildes2) {
		return fildes2;
	}

	if (fcntl(fildes, F_GETFD) == -1) {
		errno = EBADF;
		return -1;
	}

	close(fildes2);
	return fcntl(fildes, F_DUPFD, fildes2);
}
/*
POSIX(1)
*/
