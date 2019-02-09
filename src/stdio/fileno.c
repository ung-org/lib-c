#include <stdio.h>
#include "nonstd/FILE.h"
#include "nonstd/assert.h"

int fileno(FILE * stream)
{
	ASSERT_NONNULL(stream);
	return stream->fd;
}
/*
POSIX(1)
*/
