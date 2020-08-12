#include <ctype.h>
#include "limits.h"
#include "../_assert.h"
#include "_ctype.h"

/** test whether a character is a lowercase letter **/

int islower(int c)
{
	unsigned int *map = __libc(CTYPE);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return map[c] & CT_LOWER;
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(lower)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a lowercase letter)
RETURN(0, ARGUMENT(c) is not a lowercase letter)
LC_CTYPE
C_LOCALE(`THIS() is true for the characters CHAR(a), CHAR(b), CHAR(c), CHAR(d), CHAR(e), CHAR(f), CHAR(g), CHAR(h), CHAR(i), CHAR(j), CHAR(k), CHAR(l), CHAR(m), CHAR(n), CHAR(o), CHAR(p), CHAR(q), CHAR(s), CHAR(t), CHAR(u), CHAR(w), CHAR(x), CHAR(y), and CHAR(z)')
OTHER_LOCALES(`THIS() is true for a set of characters for which none of FUNCTION(iscntrl), FUNCTION(isdigit), FUNCTION(ispunct), or FUNCTION(isspace) is true')
STDC(1)
*/
