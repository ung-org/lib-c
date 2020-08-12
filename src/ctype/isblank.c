#include <ctype.h>
#include "limits.h"
#include "locale.h"
#include "_ctype.h"
#include "../_assert.h"

/** test whether a character is blank **/

int isblank(int c)
{
	unsigned int *map = __libc(CTYPE);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, "unsigned char", EOF);

	return map[c] & CT_BLANK;
}

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
