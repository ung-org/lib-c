#include <dirent.h>
#include <errno.h>
#include <sys/types.h>
#include <stdlib.h>
#include <fcntl.h>
#include "_dirent.h"

DIR * opendir(const char * dirname)
{
	DIR *dir = malloc(sizeof(*dir));
	if (dir == NULL) {
		errno = ENOMEM;
		return NULL;
	}

	dir->fd = open(dirname, O_DIRECTORY | O_SEARCH);
	if (dir->fd == -1) {
		free(dir);
		return NULL;
	}
	fcntl(dir->fd, F_SETFD, FD_CLOEXEC);

	return dir;
}

/*
POSIX(1)
*/
