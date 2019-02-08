#include <stdio.h>
#include "nonstd/io.h"

#ifdef _POSIX_SOURCE
#include "unistd.h"
#else
#define write(fd, buf, size) -1
#endif

/** write a character to a file stream **/
int fputc(int c, FILE *stream)
{
	unsigned char ch = (unsigned char)c;
	flockfile(stream);

	if (!stream) {
		return EOF;
	}

	if (write(stream->fd, &ch, sizeof(ch)) != 1) {
		/* error */
		return EOF;
	}

	funlockfile(stream);
	/*
	RETURN_SUCCESS(ARGUMENT(c));
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return ch;
}

/***
writes the character ARGUMENT(c) (converted to an TYPE(unsigned char)) to
ARGUMENT(stream). The character is written at the current
file position indicator, which is advanced. If ARGUMENT(stream) does not support
seeking or was opened in append mode, the character is written to the end of
the stream.
***/
/*
STDC(1)
*/
