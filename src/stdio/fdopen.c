#include <stdio.h>
#include "_stdio.h"

FILE * fdopen(int fildes, const char * mode)
{
	SIGNAL_SAFE(0);
	(void)fildes; (void)mode;
	return NULL;
}

/*
POSIX(1)
*/
