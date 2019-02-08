#include <stdio.h>
#include "stdlib.h"
#include "nonstd/io.h"

/** specify file stream buffering options **/
int setvbuf(FILE *stream, char *buf, int mode, size_t size)
{
	if (stream == NULL
	   || !stream->isopen
	   || stream->buftype != UNSET
	   || (mode != _IOFBF && mode != _IOLBF && mode != _IONBF))
	{
		return 1;
	}

	stream->buffering = mode;
	stream->bsize = size;

	if (buf != NULL) {
		stream->buf = buf;
		stream->buftype = SUPPLIED;
	} else if (mode != _IONBF) {
		stream->buf = calloc(size, sizeof(char));
		stream->buftype = ALLOCED;
	}
	
	return 0;
}

/***
function sets the type of buffering for a file stream, along
with the size and location of the buffer. It must be called before any other
operations are performed.

The type of buffering is specified by ARGUMENT(mode):
FLAG(CONSTANT(_IOFBF), fully buffered)
FLAG(CONSTANT(_IOLBF), line buffered)
FLAG(CONSTANT(_IONBF), unbuffered)

If ARGUMENT(buf) is CONSTANT(NULL), THIS() will automatically allocate an
appropriate buffer. If ARGUMENT(buf) is not CONSTANT(NULL), it must point to
an array of at least ARGUMENT(size) characters.

The ARGUMENT(size) argument specifies the size of the buffer.
***/
/*
STDC(1)
*/
