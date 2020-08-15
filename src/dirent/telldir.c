#include <sys/types.h>
#include <dirent.h>
#include <unistd.h>
#include "_dirent.h"

long telldir(DIR * dirp)
{
	return lseek(dirp->fd, 0, SEEK_CUR);
}

/*
XOPEN(4)
*/
