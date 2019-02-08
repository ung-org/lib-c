#include <wctype.h>
#include "wchar.h"
#include "nonstd/assert.h"

/** test whether a wide character is a control character */
int iswcntrl(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t cntrl = wctype("cntrl");
	return iswctype(wc, cntrl);
}

/***
The fn(iswcntrl) function tests whether arg(wc) is a wide character in the class
cclass(cntrl) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a control character */
/* RETURN(0): arg(wc) is not a control character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
