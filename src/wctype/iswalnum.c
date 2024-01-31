#include <wctype.h>
#include <limits.h>
#include <wchar.h>
#include "_safety.h"

/** test whether a wide character is alphanumeric **/
int iswalnum(wint_t wc)
{
	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	return iswalpha(wc) || iswdigit(wc);
}

__check_1(int, 0, iswalnum, wint_t)

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
