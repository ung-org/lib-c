#if 0

#include <dirent.h>
#include <sys/types.h>
#include <unistd.h>
#include "_dirent.h"

void rewinddir(DIR * dirp)
{
	lseek(dirp->fd, 0, SEEK_SET);
}

/*
POSIX(1)
*/


#endif
