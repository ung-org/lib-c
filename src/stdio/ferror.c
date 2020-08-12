#include <stdio.h>
#include "../_assert.h"
#include "_stdio.h"

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
