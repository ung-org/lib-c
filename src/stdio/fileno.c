#include <stdio.h>
#include "nonstd/io.h"
#include "nonstd/assert.h"

int fileno(FILE * stream)
{
	ASSERT_NONNULL(stream);
	return stream->fd;
}
/*
POSIX(1)
*/
