#if 0

#include <stdio.h>

/** write a character to stdout **/

int putchar(int c)
{
	/*
	RETURN_SUCCESS(c);
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return putc(c, stdout);
}

/***
writes the character ARGUMENT(c) (converted to an TYPE(unsigned char)) to
IDENTIFIER(stdout).
***/

/*
STDC(1)
*/


#endif
