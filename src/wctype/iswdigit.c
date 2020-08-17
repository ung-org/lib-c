#include <wctype.h>
#include <wchar.h>
#include "_assert.h"

/** test whether a wide character is a digit **/
int iswdigit(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t digit = wctype("digit");
	return iswctype(wc, digit);
}

/***
The fn(iswdigit) function tests whether arg(wc) is a wide character in the class
cclass(digit) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a digit */
/* RETURN(0): arg(wc) is not a digit */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
