#include <stdio.h>
#include <limits.h>
#include "_ctype.h"

/** convert a lowercase letter to uppercase **/

int toupper(int c)
{
	unsigned char *map = __get_locale()->lc_ctype.ctoupper;

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	if (c == EOF) {
		return EOF;
	}

	return map[c];
}

/***
converts a lowercase letter to its equivalent uppercase letter in the current
locale.
***/

/*
RETURN_SUCCESS(ARGUMENT(c) converted to uppercase)
RETURN_FAILURE(ARGUMENT(c), ARGUMENT(c) was not a lowercase letter or it has no equivalent upercase letter)
LC_CTYPE
STDC(1)
*/
