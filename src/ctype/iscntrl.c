#include <limits.h>
#include "_assert.h"
#include "_ctype.h"

/** test whether a character is a control character */

int iscntrl(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return map[c] & CT_CNTRL;
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(cntrl)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a control character)
RETURN(0, ARGUMENT(c) is not a control character)
LC_CTYPE
STDC(1)
*/
