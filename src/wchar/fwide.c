#include <wchar.h>
#include "stdio.h"
#include "nonstd/io.h"
#include "nonstd/assert.h"

int fwide(FILE * stream, int mode)
{
	ASSERT_NONNULL(stream);

	if (stream->orientation == 0) {
		stream->orientation = mode;
	}
	return stream->orientation;
}

/*
STDC(199409)
*/
