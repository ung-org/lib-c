#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include "_stdio.h"

/** specify file stream buffering options **/

int setvbuf(FILE *stream, char *buf, int mode, size_t size)
{
	SIGNAL_SAFE(0);

	flockfile(stream);

	if (!f_is_open(stream)) {
		#ifdef EBADF
		errno = EBADF;
		#endif

		return -1;
	}

	if (mode != _IOFBF && mode != _IOLBF && mode != _IONBF) {
		#ifdef EINVAL
		errno = EINVAL;
		#endif

		funlockfile(stream);
		return -1;
	}

	if (mode == _IONBF) {
		stream->bmode = mode;
		funlockfile(stream);
		return 0;
	}

	if (buf != NULL) {
		stream->buf = buf;
	} else if (size > stream->bsize) {
		char *tmp = stream->buf;
		if (tmp == stream->ibuf) {
			tmp = NULL;
		}

		stream->buf = realloc(tmp, size);
		if (stream->buf == NULL) {
			stream->buf = tmp ? tmp : stream->ibuf;
			funlockfile(stream);
			return -1;
		}

		stream->ibuf[0] = 'a';
	}

	stream->bmode = mode;
	stream->bsize = size;
	
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
