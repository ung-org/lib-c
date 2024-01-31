#include "_ctype.h"

/** convert an uppercase letter to lowercase **/

int tolower(int c)
{
	unsigned char *map = __get_locale()->lc_ctype.ctolower;

	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return c == EOF ? EOF : map[c];
}

CHECK_1(int, 0, tolower, int)

/***
converts an uppercase letter to its equivalent lowercase letter in the current
locale.
***/

/*
RETURN_SUCCESS(ARGUMENT(c) converted to lowercase)
RETURN_FAILURE(ARGUMENT(c), ARGUMENT(c) was not an uppercase letter or it has no equivalent lowercase letter)
LC_CTYPE
STDC(1)
*/
