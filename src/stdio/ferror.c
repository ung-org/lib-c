#include <stdio.h>
#include "nonstd/assert.h"
#include "nonstd/io.h"

/** tests the file stream error indicator **/
int ferror(FILE *stream)
{
	ASSERT_NONNULL(stream);
	/*
	RETURN(0, the error indicator is not set);
	RETURN(NONZERO, the error indicator is set);
	*/
	return stream->err;
}

/***
tests the error indicator of ARGUMENT(stream).
***/
/*
STDC(1)
*/
