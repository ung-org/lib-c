#include <stdio.h>

#ifdef _POSIX_SOURCE
#include "sys/types.h"
#include "sys/stat.h"
#include "unistd.h"
#else
 struct stat { int st_mode; };
#define stat(f, b) (void)f
#define S_ISDIR(m) (m = 0)
#define rmdir(f) (-1)
#define unlink(f) (-1)
#endif

/** delete a file **/

int remove(const char *filename)
{
	struct stat st;
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
*/
/*
STDC(1)
*/
