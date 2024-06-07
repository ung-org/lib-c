#include <stdio.h>
#include "_stdio.h"

/** set the file position indicator **/

int fsetpos(FILE *stream, const fpos_t *pos)
{
	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, 0, 0);
	ASSERT_FPOS(stream, pos);
	ASSERT_NOOVERLAP(stream, sizeof(*stream), pos, sizeof(*pos));

	(void)stream; (void)pos;
	/* TODO */
	stream->operation = OP_NONE;
	return 1;
}

/***
sets the file position indicator of ARGUMENT(stream) to
ARGUMENT(pos), which must have been previously obtained by a call to
FUNCTION(fgetpos).

A successful call to THIS() clears the end-of-file indicator and discards
any characters pushed back with FUNCTION(ungetc).
***/

/*
STDC(1)
*/
