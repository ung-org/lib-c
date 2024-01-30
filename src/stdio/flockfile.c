#include <stdio.h>
#include "_stdio.h"

void flockfile(FILE * file)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(file);
}

/*
POSIX(199506)
*/
