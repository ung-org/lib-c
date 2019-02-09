#include <ftw.h>
#include "sys/stat.h"

int ftw(const char * path, int (*fn) (const char *, const struct stat * ptr, int flag), int ndirs)
{
	return -1;
}

/*
XOPEN(4)
*/
