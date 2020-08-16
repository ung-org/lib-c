#include <ctype.h>
#include <limits.h>
#include "_assert.h"

/** test whether a character is alphabetic **/

int isalpha(int c)
{
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	return islower(c) || isupper(c);
}

/***
tests whether ARGUMENT(c) is a character in the class
CHARACTER_CLASS(alpha) in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is an alphabetic character)
RETURN(0, ARGUMENT(c) is not an alphabetic character)
LC_CTYPE
C_LOCALE(`THIS() is true for characters for which FUNCTION(isupper) or FUNCTION(islower) is true')
OTHER_LOCALES(`THIS is true for a set of characters for which none of FUNCTION(iscntrl), FUNCTION(isdigit), FUNCTION(ispunct), or FUNCTION(isspace) is true')
STDC(1)
*/
