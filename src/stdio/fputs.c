#if 0

#include <stdio.h>
#include "_stdio.h"

/** write a string to a file stream **/

int fputs(const char * restrict s, FILE * restrict stream)
{
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


#endif
