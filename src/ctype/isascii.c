#include <ctype.h>

/** test whether a character is in the ASCII range **/

int isascii(int c)
{
	if (0 <= c && c <= 0177) {
		return 1;
	}
	return 0;
}

/***
tests whether ARGUMENT(c) is a 7-bit US-ASCII character.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is between 0 and octal 0177 inclusive)
RETURN(ZERO, ARGUMENT(c) is outside of the ASCII range)
XOBSOLETE(700)
XOPEN(4)
*/
