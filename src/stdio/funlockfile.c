#include <stdio.h>
#include "_stdio.h"

void funlockfile(FILE * file)
{
	SIGNAL_SAFE(0);
}

/*
POSIX(199506)
*/
