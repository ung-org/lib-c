#include <dirent.h>
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

int closedir(DIR *dirp)
{
	ASSERT_NONNULL(dirp);
	SYSCALL("closedir", int, -1, dirp, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
