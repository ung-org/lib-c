#include "sys/types.h"
#include <sys/stat.h>

int fstat(int fildes, struct stat *buf)
{
	(void)fildes; (void)buf;
	return 0;
}
/*
POSIX(1)
*/
