#include <dirent.h>
#include "nonstd/assert.h"
#include "../_syscall.h"

int closedir(DIR *dirp)
{
	/*
	ASSERT_NONNULL(dirp);
	SYSCALL(closedir, int, -1, dirp, 0, 0, 0, 0, 0);
	*/
	return -1;
}
/*
POSIX(1)
*/
