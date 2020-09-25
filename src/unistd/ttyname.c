#include <sys/types.h>
#include <unistd.h>
#include <limits.h>
#include <stdio.h>
#include "_unistd.h"
#include "_syscall.h"

#ifndef readlink
#define readlink(_path, _buf, _bufsiz) __scall3(readlink, _path, _buf, _bufsiz)
#endif

char *ttyname(int fildes)
{
	char path[PATH_MAX + 1];
	static char __ttyname[PATH_MAX + 1];

	if (!isatty(fildes)) {
		return NULL;
	}

	sprintf(path, "/proc/self/fd/%d", fildes);
	if (readlink(path, __ttyname, sizeof(__ttyname)) == -1) {
		return NULL;
	}

	return __ttyname;
}
/*
POSIX(1)
*/
