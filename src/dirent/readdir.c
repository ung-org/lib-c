#include <dirent.h>
#include <limits.h>
#include <errno.h>
#include <sys/types.h>
#include <string.h>
#include <unistd.h>
#include "_dirent.h"
#include "_syscall.h"

/** read a directory **/

struct dirent * readdir(DIR * dirp)
{
	if (read(dirp->fd, dirp, sizeof(*dirp)) == -1) {
		if (errno == EISDIR) {
			#ifdef __linux__
			struct {
				long inode;
				off_t offset;
				unsigned short reclen;
				char name[NAME_MAX + 1];
			} linux = { 0, 0, 0, "" };
			long ret = __scall3(getdents, dirp->fd, &linux, sizeof(linux));
			if (ret < 0) {
				errno = -ret;
				return NULL;
			}

			#ifdef _XOPEN_SOURCE
			dirp->de.d_ino = linux.inode;
			#endif

			strcpy(dirp->de.d_name, linux.name);
			return &dirp->de;
			#endif
		}
		return NULL;
	}

	return &dirp->de;
}

/*
POSIX(1)
*/
