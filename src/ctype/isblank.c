#include "_ctype.h"

/** test whether a character is blank **/

int isblank(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, "unsigned char", EOF);

	return c == EOF ? 0 : map[c] & CT_BLANK;
}

__check_1(int, 0, isblank, int)

/***
tests whether a character is a of the character class CCLASS(blank) in the
current locale.
***/


/*
C_LOCALE(only space (CHAR( )) and tab (CHAR(\t)) are blank)
OTHER_LOCALES(true for space (CHAR( )), tab (CHAR(\t)), and characters for which FUNCTION(isspace) is true and are used to separate words)
RETURN(NONZERO, arg(c) is a blank character)
RETURN(ZERO, arg(c) is not a blank character)
LC_CTYPE
STDC(199901)
*/
