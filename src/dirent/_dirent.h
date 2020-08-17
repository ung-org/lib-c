#ifndef ___DIRENT_H__
#define ___DIRENT_H__

#ifndef O_DIRECTORY
#define O_DIRECTORY O_RDONLY
#endif

#ifndef O_SEARCH
#define O_SEARCH O_RDONLY
#endif

#ifndef NAME_MAX
#define NAME_MAX _POSIX_NAME_MAX
#endif

struct __DIR {
	int fd;
	struct dirent de;
};

#endif
