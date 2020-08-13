#include <stdio.h>
#include "_stdio.h"

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

	if (!stream) {
		return EOF;
	}

	if (write(stream->fd, &ch, sizeof(ch)) != 1) {
		/* error */
		return EOF;
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
