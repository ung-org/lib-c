#include <sys/statvfs.h>

int fstatvfs(int fildes, struct statvfs *buf)
{
	return -1;
}

/*
XOPEN(400)
POSIX(200809)
*/
