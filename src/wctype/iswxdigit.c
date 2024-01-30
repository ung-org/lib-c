#include <wctype.h>
#include <wchar.h>
#include "_safety.h"

/** test whether a wide character is a hexadecimal digit **/
int iswxdigit(wint_t wc)
{
	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t xdigit = wctype("xdigit");
	return iswctype(wc, xdigit);
}

/***
The fn(iswxdigit) function tests whether arg(wc) is a wide character in the
class cclass(xdigit) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a hexadecimal digit */
/* RETURN(0): arg(wc) is not a hexadecimal digit */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
