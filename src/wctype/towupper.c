#if 0

#include <wctype.h>
#include <wchar.h>
#include "_assert.h"

/** convert a wide lowercase letter to uppercase **/
wint_t towupper(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	if (!iswlower(wc)) {
		return wc;
	}

	wctrans_t trans = wctrans("toupper");
	return towctrans(wc, trans);
}

/***
The fn(towupper) function converts a wide lowercase letter to its equivalent
uppercase letter in the current locale.
***/

/* RETURN(arg(c)): arg(wc) was not a wide lowercase letter or it has no equivalent upercase letter */
/* RETURN: arg(c) converted to uppercase */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/


#endif
