#include <wctype.h>
#include "_assert.h"

/** test whether a wide character is blank **/
int iswblank(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t blank = wctype("blank");
	return iswctype(wc, blank);
}

/***
The fn(iswblank) functions tests whether a wide character is a of the character
class cclass(blank) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a blank character */
/* RETURN(0): arg(wc) is not a blank character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199901)
*/
