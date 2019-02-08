#include <ctype.h>
#include "limits.h"
#include "locale.h"
#include "nonstd/ctype.h"
#include "nonstd/internal.h"
#include "nonstd/assert.h"

/** test whether a character is blank **/
int isblank(int c)
{
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, "unsigned char", EOF);

	unsigned int *map = __libc(CTYPE);

	return map[c] & BLANK;
}

/***
The fn(isblank) functions tests whether a character is a of the character
class cclass(blank) in the current locale.

In the locale(C) and locale(POSIX) locales, only the standard blank characters
space (char( )) horizontal tab (char(\t)) are blank.

In other locales, fn(isblank) will return true for the standard blank characters
as well as other characters for which fn(isspace) is true and the character is
used to separate words on a line a text.
***/

/* RETURN(NZ): arg(c) is a blank character */
/* RETURN(0): arg(c) is not a blank character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199901)
*/
