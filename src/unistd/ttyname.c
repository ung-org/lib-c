#include <sys/types.h>
#include <unistd.h>
#include <limits.h>
#include <stdio.h>
#include "_unistd.h"
#include "_syscall.h"

#ifndef PATH_MAX
#define PATH_MAX _POSIX_PATH_MAX
#endif

#ifndef readlink
#define readlink(_path, _buf, _bufsiz) __syscall(__syscall_lookup(readlink), _path, _buf, _bufsiz, 0, 0, 0)
#endif

char *ttyname(int fildes)
{
	char path[PATH_MAX + 1];

	if (!isatty(fildes)) {
		return NULL;
	}

	sprintf(path, "/proc/self/fd/%d", fildes);
	if (readlink(path, __unistd.ttyname, sizeof(__unistd.ttyname)) == -1) {
		return NULL;
	}
	return __unistd.ttyname;
}
/*
POSIX(1)
*/
