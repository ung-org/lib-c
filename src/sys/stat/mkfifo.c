#include "sys/types.h"
#include <sys/stat.h>

int mkfifo(const char *path, mode_t mode)
{
	(void)path; (void)mode;
	return 0;
}
/*
POSIX(1)
*/
