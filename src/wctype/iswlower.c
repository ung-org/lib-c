#include <wctype.h>
#include "wchar.h"
#include "../_assert.h"

/** test whether a character is a lowercase letter **/
int iswlower(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t lower = wctype("lower");
	return iswctype(wc, lower);
}

/***
The fn(iswlower) function tests whether arg(wc) is a wide character in the class
cclass(lower) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a lowercase letter */
/* RETURN(0): arg(wc) is not a lowercase letter */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
