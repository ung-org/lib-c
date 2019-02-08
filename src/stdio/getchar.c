#include <stdio.h>

/** read a character from stdin **/
int getchar(void)
{
	/*
	RETURN_SUCCESS(the next character);
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return getc(stdin);
}

/***
reads the next character from ARGUMENT(stdin).
***/
/*
STDC(1)
*/
