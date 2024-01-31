#include "_ctype.h"

/** test whether a character is printable **/

int isprint(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return c == EOF ? 0 : map[c] & CT_PRINT;
}

CHECK_1(int, 0, isprint, int)

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(print)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a printable character)
RETURN(0, ARGUMENT(c) is not a printable character)
LC_CTYPE
C_LOCALE(`THIS() is true for any printing character including SPACE()')
STDC(1)
*/
