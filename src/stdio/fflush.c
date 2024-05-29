#include <stdio.h>
#include "_stdio.h"
#include "_forced/write.h"

/** flush buffered writes **/

int fflush(FILE *stream)
{
	int ret = 0;

	SIGNAL_SAFE(0);

	if (stream == NULL) {
		size_t i;
		for (i = 0; i < FOPEN_MAX; i++) {
			stream = __stdio.FILES + i;
			if (stream->write && (stream->operation != OP_INPUT)) {
				fflush(stream);
			}
		}
		return 0;
	}

	ASSERT_STREAM(stream, 0, 0);

	if (!stream->write) {
		UNDEFINED("attempt to fflush() an input stream");
	}

	if (stream->read && stream->operation == OP_INPUT) {
		UNDEFINED("attempt to fflush() an update stream after input");
	}

	if (stream->bpos == 0) {
		return 0;
	}

	flockfile(stream);
	if (write(stream->fd, stream->buf, stream->bpos) < 0) {
		/* errno is set */
		ret = EOF;
		stream->err = 1;
	} else {
		stream->bpos = 0;
	}
	funlockfile(stream);

	/*
	RETURN_SUCCESS(0);
	RETURN_FAILURE(CONSTANT(EOF));
	*/

	stream->operation = OP_NONE;

	return ret;
}

/***
function flushes any buffered write operations on ARGUMENT(stream) to
the underlying file.

If ARGUMENT(stream) is CONSTANT(NULL), THIS() will flush all open streams.
***/

/*
UNDEFINED(ARGUMENT(stream) is not an output stream)
UNDEFINED(ARGUMENT(stream) is an update stream in which the most recent operation was input)
STDC(1)
*/
