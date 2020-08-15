#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include "_dirent.h"

void seekdir(DIR * dirp, long loc)
{
	lseek(dirp->fd, loc, SEEK_SET);
}

/*
XOPEN(4)
*/
