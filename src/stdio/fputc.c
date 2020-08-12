#include <stdio.h>
#include "_stdio.h"

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#include "unistd.h"
#else
#include "../_syscall.h"
#define write(_fd, _buf, _size) __syscall(__syscall_lookup(write), _fd, _buf, _size)
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
RETURN_SUCCESS(ARGUMENT(c))
RETURN_FAILURE(CONSTANT(EOF))
STDC(1)
*/
