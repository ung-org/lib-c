#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>
#include <sys/stat.h>

int access(const char *path, int amode)
{
	struct stat st;
	mode_t check = (amode & R_OK ? 4 : 0)
		| (amode & W_OK ? 2 : 0)
		| (amode & X_OK ? 1 : 0);

	if (amode != F_OK && ((amode & ~(R_OK | W_OK | X_OK)) != 0)) {
		errno = EINVAL;
		return -1;
	}

	if (stat(path, &st) == -1) {
		/* errno set by stat() */
		return -1;
	}

	if (amode == F_OK) {
		return 0;
	}

	if (st.st_uid == getuid()) {
		check <<= 6;
	} else if (st.st_gid == getgid()) {
		check <<= 3;
	}

	if ((st.st_mode & check) == check) {
		return 0;
	}

	errno = EACCES;
	return -1;
}
/*
POSIX(1)
*/


#endif
