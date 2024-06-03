#include <wctype.h>
#include <wchar.h>
#include "_wctype.h"

wint_t towctrans(wint_t wc, wctrans_t desc)
{
	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);
	//ASSERT_REPRESENTABLE(desc, 1, __libc.wctype.nwctrans, "wctrans_t", 0);

	if (__get_locale()->ctype_epoch != (desc >> CT_EPOCH_SHIFT)) {
		UNDEFINED("LC_CTYPE has changed since the call to wctrans()");
	}

	/* TODO: actual work */
	(void)wc; (void)desc;

	return 0;
}

CHECK_2(wint_t, 0, towctrans, wint_t, wctrans_t)

/***
The fn(towctrans) function translates the wide character arg(wc) according to
mapping described by arg(desc), which must come from a previous call to
fn(wctrans), in the current locale.
***/

/* RETURN: the translated wide character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
