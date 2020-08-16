#include <stdio.h>
#include "_stdio.h"
#include "_assert.h"

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#include "unistd.h"
#else
#include "_syscall.h"
#define write(_fd, _buf, _size) __syscall(__syscall_lookup(write), _fd, _buf, _size)
#endif

/** write a character to a file stream with explicit client locking **/

int putc_unlocked(int c, FILE *stream)
{
	unsigned char ch = (unsigned char)c;

	ASSERT_NONNULL(stream);
	
	stream->buf[stream->bpos++] = ch;
	if (stream->bpos == stream->bsize ||
		(stream->bmode == _IOLBF && ch == '\n') ||
		(stream->bmode == _IONBF)) {
		if (write(stream->fd, stream->buf, stream->bpos) != 1) {
			/* errno handled by write() */
			return EOF;
		}
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
