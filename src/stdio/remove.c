#if 0
#ifndef _POSIX_SOURCE
#define _POSIX_SOURCE
#define POSIX_FORCED
#endif

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#ifdef POSIX_FORCED
#include "_syscall.h"
#define stat(_f, _b)	__scall2(stat, _f, _b)
#define rmdir(_f)	__scall1(rmdir, _f)
#define unlink(_f)	__scall1(unlink, _f)
#endif

/** delete a file **/

int remove(const char *filename)
{
	struct stat st;

	SIGNAL_SAFE(0);

	stat(filename, &st);
	if (S_ISDIR(st.st_mode)) {
		return rmdir(filename);
	}
	return unlink(filename);
}

/***
function removes the file ARGUMENT(filename) so the future attempts to
open that file will fail unless creating a new file.
***/

/*
IMPLEMENTATION(Whether the file is removed if it is open)
STDC(1)
*/

#endif
