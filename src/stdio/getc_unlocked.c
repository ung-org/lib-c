#include <stdio.h>
#include "_stdio.h"

#if defined _POSIX_SOURCE
#include <sys/types.h>
#include <unistd.h>
#else
#include "_syscall.h"
#define read(_fd, _buf, _size) __scall3(read, _fd, _buf, _size)
#endif

int getc_unlocked(FILE * stream)
{
	char c = 0;

	SIGNAL_SAFE(0);

	ASSERT_STREAM(stream, 0, OP_INPUT);

	if (stream->operation == OP_OUTPUT) {
		UNDEFINED("attempted input on stream immediately after output");
	}

	stream->operation = OP_INPUT;

	if (read(stream->fd, &c, sizeof(c)) != 1) {
		stream->err = 1;
		stream->eof = 1;
		return EOF;
	}

	return c;
}

/*
POSIX(199506)
*/
