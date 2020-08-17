#include <wctype.h>
#include <wchar.h>
#include <stdlib.h>
#include "_assert.h"

/** convert a wide uppercase letter to lowercase **/
wint_t towlower(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	if (!iswupper(wc)) {
		return wc;
	}

	wctrans_t trans = wctrans("tolower");
	return towctrans(wc, trans);
}

/***
The fn(towlower) function converts a wide uppercase letter to its equivalent
lowercase letter in the current locale.
***/

/* RETURN(arg(c)): arg(wc) was not a wide uppercase letter or it has no equivalent lowercase letter */
/* RETURN: arg(wc) converted to lowercase */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
