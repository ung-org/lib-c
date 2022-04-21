#include "_ftw.h"

int __ftw(const char *path, int (*fn)(), int fd_limit, int flags)
{
	struct FTW ft;
	struct stat st;
	int type = 0;

	int ret = (flags == __FTW_OLD) ? fn(path, &st, type) : fn(path, &st, type, &ft);

	return ret;
}
