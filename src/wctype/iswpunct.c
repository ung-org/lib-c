#include <wctype.h>
#include "wchar.h"
#include "_assert.h"

/** test whether a wide character is punctuation **/
int iswpunct(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t punct = wctype("punct");
	return iswctype(wc, punct);
}

/***
The fn(iswpunct) function tests whether arg(wc) is a character in the class
cclass(punct) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a punctuation character */
/* RETURN(0): arg(wc) is not a punctuation character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
