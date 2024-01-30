#include <errno.h>
#include <stdio.h>
#include "_stdio.h"
#include "_syscall.h"

/** rename a file **/

int rename(const char *old, const char *new)
{
	SIGNAL_SAFE(0);
	SYSCALL(rename, int, -1, old, new, 0, 0, 0, 0);
}

/***
renames a file from its original name ARGUMENT(old) to
ARGUMENT(new).
***/

/*
IMPLEMENTATION(Behavior if ARGUMENT(new) exists prior to THIS() being called)
STDC(1)
*/
