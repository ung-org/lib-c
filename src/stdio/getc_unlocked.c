#include <stdio.h>
#include "_stdio.h"
#include "unistd.h"

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
