#include "_ctype.h"

/** test whether a character is a hexadecimal digit **/

int isxdigit(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return c == EOF ? 0 : map[c] & CTM_XDIGIT;
}

CHECK_1(int, 0, isxdigit, int)

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(xdigit)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a hexadecimal digit)
RETURN(0, ARGUMENT(c) is not a hexadecimal digit)
LC_CTYPE
C_LOCALE(`THIS() is true for the characters CHAR(0), CHAR(1), CHAR(2), CHAR(3), CHAR(4), CHAR(5), CHAR(6), CHAR(7), CHAR(8), CHAR(9), CHAR(a), CHAR(b), CHAR(c), CHAR(d), CHAR(e), CHAR(f), CHAR(A), CHAR(B), CHAR(C), CHAR(D), CHAR(E), and CHAR(F)')
STDC(1)
*/
