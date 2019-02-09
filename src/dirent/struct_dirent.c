#include <dirent.h>

struct dirent {
	#if (defined _XOPEN_SOURCE)
	ino_t d_ino;
	#else
	unsigned long long int __padding;
	#endif
	char d_name[];
};

/*
POSIX(1)
*/
