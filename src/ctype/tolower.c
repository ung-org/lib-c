#include <ctype.h>
#include "limits.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"

/** convert an uppercase letter to lowercase **/
int tolower(int c)
{
	unsigned char *map = __libc(TOLOWER);

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	/*
	RETURN_SUCCESS(ARGUMENT(c) converted to lowercase);
	RETURN_FAILURE(ARGUMENT(c), ARGUMENT(c) was not an uppercase letter or it has no equivalent lowercase letter);
	*/

	return map[c];
}

/***
converts an uppercase letter to its equivalent lowercase letter in the current
locale.
***/

/*
LC_CTYPE
STDC(1)
*/
