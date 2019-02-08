#include <stdio.h>
#include "stdlib.h"
#include "nonstd/io.h"

#ifdef _POSIX_SOURCE
#include "unistd.h"
#else
#define close(fd) -1
#endif

/** close a file stream **/
int fclose(FILE *stream)
{
	flockfile(stream);
	if (fflush(stream) == EOF) {
		/* set errno */
		return EOF;
	}

	if (stream->mem.buf) {
		if (stream->mem.allocated) {
			free(stream->mem.buf);
		}
	} else if (close(stream->fd) == -1) {
		/* set errno */
		return EOF;
	}

	/*
	if (!(stream->flags & FF_USERBUF) && stream->buf != NULL) {
		free(stream->buf);
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
function closes ARGUMENT(stream) and its associated file. Any
unwritten data is flushed before closing. Any unread data is discarded. If the
buffer was automatically allocated, it is freed.
***/
/*
STDC(1)
*/
