#include <stdio.h>
#include "_stdio.h"

/** push a character back into an input stream **/
int ungetc(int c, FILE *stream)
{
	(void)c; (void)stream;
	/* TODO */
	/*
	RETURN_SUCCESS(ARGUMENT(c));
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return EOF;
}

/***
pushes the characer ARGUMENT(c) (converted to an
type(unsigned char)) into the input stream ARGUMENT(stream). Future function calls
that read input will return the pushed character. Calls to seeking functions
(e.g. FUNCTION(fseek), FUNCTION(fsetpos), or FUNCTION(rewind)) will discard pushed characters.
The file associated with ARGUMENT(stream) is unchanged.

At least one character can be pushed back. Multiple calls to THIS() without
intervening read operations may fail.

If macro(EOF) is specified for ARGUMENT(c), THIS() fails and the input stream
is unchagned.

A successfull call clears the end-of-file indicator for ARGUMENT(stream). The file
position indicator is decremented.

Calling THIS() on a binary stream when the file position indicator is zero
is obsolete in ISO/IEC 9899:1999.
***/
/*
STDC(1)
*/
