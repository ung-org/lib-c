#include <stdio.h>
#include <string.h>
#include "_stdio.h"

/** write a string to a file stream **/

int fputs(const char * restrict s, FILE * restrict stream)
{
	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, ORIENT_BYTE, OP_OUTPUT);
	ASSERT_NOOVERLAP(s, strlen(s), stream, sizeof(*stream));

	flockfile(stream);
	while (*s) {
		if (fputc(*s++, stream) == EOF) {
			return EOF;
		}
	}
	funlockfile(stream);

	/*
	RETURN_SUCCESS(NONNEGATIVE());
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return 1;
}

/***
writes the string ARGUMENT(s) to ARGUMENT(stream), not including
the terminating CHAR(\0) character.
***/

/*
STDC(1)
*/
