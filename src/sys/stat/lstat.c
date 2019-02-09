#include <sys/stat.h>

int lstat(const char * restrict path, struct stat * restrict buf)
{
	/* if path is a symlink, return that info */
	return 0;
}

/*
XOPEN(400)
POSIX(200112)
*/
