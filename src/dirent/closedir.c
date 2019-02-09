#include <dirent.h>
#include "nonstd/assert.h"
#include "nonstd/types.h"
#include "nonstd/syscall.h"

int closedir(DIR *dirp)
{
	ASSERT_NONNULL(dirp);
	SCNO(scno, "closedir", -1);

	int r = __libc.syscall(scno, dirp);
	if (r < 0) {
		errno = -r;
		return -1;
	}
	return 0;
}
/*
POSIX(1)
*/
