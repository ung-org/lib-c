#include <stdio.h>

/** read a character from a file stream **/

int getc(FILE *stream)
{
	/*
	RETURN_SUCCESS(the next character);
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return fgetc(stream);
}

/***
is the equivalent of FUNCTION(fgetc) except that if it is
defined as a macro, it may evaluate ARGUMENT(stream) more than once.
***/

/*
STDC(1)
*/
