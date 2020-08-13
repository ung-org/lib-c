#include <stdio.h>
#include "_stdio.h"

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#include "unistd.h"
#else
#include "_syscall.h"
#define read(_fd, _buf, _size) __syscall(__syscall_lookup(read), _fd, _buf, _size)
#endif

int getc_unlocked(FILE * stream)
{
	char c = 0;

	if (!stream) {
		return EOF;
	}

	if (read(stream->fd, &c, sizeof(c)) != 1) {
		stream->err = 1;
		return EOF;
	}

	return c;
}

/*
POSIX(199506)
*/
