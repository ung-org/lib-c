#include <stdio.h>
#include "errno.h"
#include "nonstd/syscall.h"

/** rename a file **/
int rename(const char *old, const char *new)
{
	SYSCALL_NUMBER(sc, "rename", -1);
	int err = 0;

	err = __syscall(sc, old, new);
	if (err < 0) {
		errno = -err;
		return -1;
	}

	return 0;
}

/***
renames a file from its original name ARGUMENT(old) to
ARGUMENT(new).
***/

/*
IMPLEMENTATION(Behavior if ARGUMENT(new) exists prior to THIS() being called)
*/
/*
STDC(1)
*/
