#if 0

#include <stdio.h>

/** write a character to a file stream **/

int putc(int c, FILE *stream)
{
	/*
	RETURN_SUCCESS(ARGUMENT(c));
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return fputc(c, stream);
}

/***
is equivalent of FUNCTION(fputc), except that if it is defined
as a macro, it may evaluate ARGUMENT(stream) more than once.
***/

/*
STDC(1)
*/


#endif
