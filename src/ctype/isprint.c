#include <ctype.h>
#include "limits.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"

/** test whether a character is printable **/
int isprint(int c)
{
	unsigned int *map = __libc(CTYPE);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	/*
	RETURN(NONZERO, ARGUMENT(c) is a printable character);
	RETURN(0, ARGUMENT(c) is not a printable character);
	*/

	return map[c] & ~CT_SPACE || c == ' ';
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(print)
in the current locale.
***/

/*
LC_CTYPE
C_LOCALE(`THIS() is true for any printing character including SPACE()')
STDC(1)
*/
