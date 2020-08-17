#include <dirent.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include "_assert.h"
#include "_dirent.h"

int closedir(DIR *dirp)
{
	int ret = -1;
	ASSERT_NONNULL(dirp);
	ret = close(dirp->fd);
	if (ret != -1) {
		free(dirp);
	}
	return ret;
}
/*
POSIX(1)
*/
