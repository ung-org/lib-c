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
The fn(isascii) function tests whether arg(c) is a 7-bit US-ASCII character.
***/

/* RETURN(NZ): arg(c) is between 0 and octal 0177 inclusive */
/* RETURN(0): arg(c) is outside of the ASCII range */

/* UNDEFINED: - */
/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/*
XOPEN(4)
*/
