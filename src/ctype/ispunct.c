#include <ctype.h>
#include "limits.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"
#include "nonstd/internal.h"

/** test whether a character is punctuation **/
int ispunct(int c)
{
	unsigned int *map = __libc(CTYPE);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	/*
	RETURN(NONZERO, ARGUMENT(c) is a punctuation character);
	RETURN(0, ARGUMENT(c) is not a punctuation character);
	*/

	return map[c] & PUNCT;
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(punct)
in the current locale.
***/

/*
LC_CTYPE
C_LOCALE(`THIS() is true for printing characters for which neither FUNCTION(isspace) nor FUNCTION(isalnum) is true')
STDC(1)
*/
