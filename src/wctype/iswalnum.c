#include <wctype.h>
#include "limits.h"
#include "nonstd/assert.h"
#include "wchar.h"

/** test whether a wide character is alphanumeric **/
int iswalnum(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	return iswalpha(wc) || iswdigit(wc);
}

/***
The fn(iswalnum) function tests whether arg(wc) is a wide character in the class
cclass(alpha) or cclass(digit) in the current locale.
***/

/* RETURN(NZ): arg(wc) is an alphanumeric character */
/* RETURN(0): arg(wc) is not an alphanumeric character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
