#ifndef ___UNISTD_H__
#define ___UNISTD_H__

#include <sys/types.h>
#include <unistd.h>
#include <limits.h>

#ifndef PATH_MAX
#define PATH_MAX _POSIX_PATH_MAX
#endif

struct __unistd {
	char ttyname[PATH_MAX + 1];
};

extern struct __unistd __unistd;

#endif
