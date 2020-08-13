#ifndef ___DIRENT_H__
#define ___DIRENT_H__

#include <dirent.h>

struct __DIR {
	int fd;
	struct dirent de;
};

#endif
