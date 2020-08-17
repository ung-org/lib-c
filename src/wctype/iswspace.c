#include <wctype.h>
#include <wchar.h>
#include "_assert.h"

/** test whether a wide character is white-space **/
int iswspace(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t space = wctype("space");
	return iswctype(wc, space);
}

/***
The fn(iswspace) function tests whether arg(wc) is a wide character in the class
cclass(space) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a white-space character */
/* RETURN(0): arg(wc) is not a white-space character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
