#include <stdio.h>
#include "_stdio.h"
#include "../_assert.h"

int fileno(FILE * stream)
{
	ASSERT_NONNULL(stream);
	return stream->fd;
}
/*
POSIX(1)
*/
