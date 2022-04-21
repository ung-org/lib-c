#include <ftw.h>
#include <sys/stat.h>
#include "_ftw.h"

int ftw(const char * path, int (*fn) (const char *, const struct stat * ptr, int flag), int ndirs)
{
	return __ftw(path, fn, ndirs, __FTW_OLD);
}

/*
XOPEN(4)
*/
