#if 0

#include <wctype.h>
#include <wchar.h>
#include "_assert.h"

/** test whether a wide character is alphabetic **/
int iswalpha(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t alpha = wctype("alpha");
	return iswctype(wc, alpha);
}

/***
The fn(iswalpha) function tests whether arg(wc) is a wide character in the class
cclass(alpha) in the current locale.
***/

/* RETURN(NZ): arg(wc) is an alphabetic character */
/* RETURN(0): arg(wc) is not an alphabetic character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/


#endif
