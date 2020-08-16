#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "_stdio.h"

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include <sys/types.h>
#include <unistd.h>
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
