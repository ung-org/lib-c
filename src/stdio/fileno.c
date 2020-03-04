#include <stdio.h>
#include "_stdio.h"
#include "nonstd/assert.h"

int fileno(FILE * stream)
{
	ASSERT_NONNULL(stream);
	return stream->fd;
}
/*
POSIX(1)
*/
