#include <ftw.h>

int nftw(const char * path, int (*fn) (const char *, const struct stat *, int, struct FTW *), int fd_limit, int flags)
{
	return __ftw(path, fn, fd_limit, flags);
}

/*
XOPEN(400)
*/
