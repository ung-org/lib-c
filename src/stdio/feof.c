#include <stdio.h>
#include "_stdio.h"

/** test for end-of-file **/

int feof(FILE *stream)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(stream);
	flockfile(stream);

	if (stream->eof) {
		return 1;
	}
	/* TODO */
	/* system level test */
	funlockfile(stream);
	/*
	RETURN(0, the end-of-file indicator is not set);
	RETURN(NONZERO, the end-of-file indicator is set);
	*/
	return stream->eof;
}

/***
tests for the end-of-file indicator of ARGUMENT(stream).
***/

/*
STDC(1)
*/
