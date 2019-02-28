#include <stdio.h>
#include "nonstd/io.h"

/** flush buffered writes **/
int fflush(FILE *stream)
{
	flockfile(stream);
	if (stream == NULL) {
		FILE *p;
		for (p = __libc(FILE_STREAMS); p != NULL; p = p->prev) {
			fflush(p);
		}
	}

	/*
	if (fsync(stream->fd) != 0) {
		stream->err = 1;
		return EOF;
	}
	*/

	funlockfile(stream);
	/*
	RETURN_SUCCESS(0);
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return 0;
}

/***
function flushes any buffered write operations on ARGUMENT(stream) to
the underlying file.

If ARGUMENT(stream) is CONSTANT(NULL), THIS() will flush all open streams.
***/

/*
UNDEFINED(ARGUMENT(stream) is not an output stream)
UNDEFINED(ARGUMENT(stream) is an update stream in which the most recent operation was input)
*/
/*
STDC(1)
*/
