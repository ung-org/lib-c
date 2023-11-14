#include <stdio.h>
#include <limits.h>
#include <stdio.h>
#include "_ctype.h"

/** convert an uppercase letter to lowercase **/

int tolower(int c)
{
	unsigned char *map = __get_locale()->lc_ctype.ctolower;

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	if (c == EOF) {
		return EOF;
	}

	return map[c];
}

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
