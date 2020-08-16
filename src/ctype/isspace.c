#include <limits.h>
#include "_assert.h"
#include "_ctype.h"

/** test whether a character is white-space **/

int isspace(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return map[c] & CT_SPACE;
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(space)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a white-space character)
RETURN(0, ARGUMENT(c) is not a white-space character)
LC_CTYPE
C_LOCALE(`THIS() is true for the standard white-space characters: SPACE, form feed (CHAR(\f)), new-line (CHAR(\n)), carriage return (CHAR(\r)), horizontal tab (CHAR(\t)), and vertical tab (CHAR(\v))')
OTHER_LOCALES(`THIS() is true for the standard white-space characters and a set of characters for which FUNCTION(isalnum) is false')
STDC(1)
*/
