#include <stdio.h>
#include "_stdio.h"

#ifdef _POSIX_SOURCE
#include <sys/types.h>
#include <unistd.h>
#else
#include "_syscall.h"
#define write(_fd, _buf, _size) __scall3(write, _fd, _buf, _size)
#endif

/** write a character to a file stream with explicit client locking **/

int putc_unlocked(int c, FILE *stream)
{
	unsigned char ch = (unsigned char)c;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(stream);

	if (stream->operation == OP_INPUT) {
		UNDEFINED("attempted output on stream immediately after input");
	}
	
	stream->operation = OP_OUTPUT;
	stream->buf[stream->bpos++] = ch;
	if (stream->bpos == stream->bsize ||
		(stream->bmode == _IOLBF && ch == '\n') ||
		(stream->bmode == _IONBF)) {
		if (write(stream->fd, stream->buf, stream->bpos) < 0) {
			/* errno handled by write() */
			stream->err = 1;
			return EOF;
		}
		stream->bpos = 0;
	}

	return ch;
}

/***
***/

/*
RETURN_SUCCESS(ARGUMENT(c))
RETURN_FAILURE(CONSTANT(EOF))
POSIX(199506)
*/
