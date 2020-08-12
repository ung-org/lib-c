#include <errno.h>
#include "../_perthread.h"

/*
This version of __errno() is for single-threaded programs and those compiled
with _Thread_local support from C11 or later.

For programs that require per-thread errno without language support (i.e.
using pthreads), there is an identically signatured version of this function
in ../pthread/__pt_errno.c which uses pthread keys.
*/

int *__errno(void)
{
	THREAD_LOCAL int e = 0;
        return &e;
}
