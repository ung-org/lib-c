#include <stdio.h>
#include "_stdio.h"

/** tests the file stream error indicator **/

int ferror(FILE *stream)
{
	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, 0, 0);
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
