#include <stdio.h>
#include "_stdio.h"

int fileno(FILE * stream)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(stream);
	return stream->fd;
}

/*
POSIX(1)
*/
