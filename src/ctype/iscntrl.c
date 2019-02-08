#include <ctype.h>
#include "limits.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"
#include "nonstd/internal.h"

/** test whether a character is a control character */
int iscntrl(int c)
{
	unsigned int *map = __libc(CTYPE);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	/*
	RETURN(NONZERO, ARGUMENT(c) is a control character);
	RETURN(0, ARGUMENT(c) is not a control character);
	*/

	return map[c] == 0 || (map[c] == SPACE && c != ' ');
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(cntrl) in the
current locale.
***/

/*
LC_CTYPE
STDC(1)
*/
