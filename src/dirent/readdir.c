#include <dirent.h>
#include "limits.h"
#include "errno.h"
#include "sys/types.h"
#include "stddef.h"
#include "_dirent.h"
#include "unistd.h"
#include "_syscall.h"

#ifndef NAME_MAX
#define NAME_MAX _POSIX_NAME_MAX
#endif

struct dirent * readdir(DIR * dirp)
{
	struct {
		unsigned long inode;
		unsigned long offset;
		unsigned short length;
	} kernel_de = { 0, 0, 0 };
	if (read(dirp->fd, &kernel_de, sizeof(kernel_de)) == -1) {
		if (errno == EISDIR) {
			struct {
				long inode;
				off_t offset;
				unsigned short reclen;
				char name[NAME_MAX + 1];
			} linux = { 0, 0, 0, "" };
			long ret = __syscall(__syscall_lookup(getdents), dirp->fd, &linux, sizeof(linux));
			if (ret < 0) {
				errno = -ret;
				return NULL;
			}

			#ifdef _XOPEN_SOURCE
			dirp->de.d_ino = linux.inode;
			#endif
			strcpy(dirp->de.d_name, linux.name);
			return &dirp->de;
		}
		return NULL;
	}

	#ifdef _XOPEN_SOURCE
	dirp->de.d_ino = inode;
	#endif

	if (read(dirp->fd, &dirp->de.d_name, kernel_de.length) == -1) {
		return NULL;
	}

	return &dirp->de;
}

/*
POSIX(1)
*/
