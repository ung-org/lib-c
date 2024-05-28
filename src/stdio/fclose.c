#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "_stdio.h"

#include "_forced/close.h"

/** close a file stream **/

int fclose(FILE *stream)
{
	SIGNAL_SAFE(0);

	flockfile(stream);
	if (stream->operation == OP_OUTPUT && fflush(stream) == EOF) {
		/* set errno */
		return EOF;
	}

	if (stream->buf != stream->ibuf) {
		if (stream->ibuf[0] == 'a') {
			free(stream->buf);
		}
	}

	if (close(stream->fd) == -1) {
		/* errno is set automatically */
		funlockfile(stream);
		return EOF;
	}

	memset(stream, '\0', sizeof(*stream));
	stream->fd = -1;

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
