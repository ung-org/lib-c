#include <stdio.h>
#include "_stdio.h"
#include "_forced/stat.h"
#include "_forced/rmdir.h"
#include "_forced/unlink.h"

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
