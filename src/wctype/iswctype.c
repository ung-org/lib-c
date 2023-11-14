#if 0

#include <wctype.h>
#include <wchar.h>
#include "_assert.h"

/** test whether a wide character is part of a character class **/
int iswctype(wint_t wc, wctype_t desc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);
	ASSERT_REPRESENTABLE(desc, 1, __libc.wctype.nwctype, "wctype_t", 0);

	/* TODO: actual work */
	(void)wc; (void)desc;

	return 0;
}

/***
The fn(iswctype) function tests whether arg(wc) is a wide character in the
character class represented by arg(desc), which must have been previously
returned by fn(wctype), in the current locale.
***/

/* RETURN(0): arg(wc) is not in the character class represented by arg(desc) */
/* RETURN(NZ): arg(wc) is in the character class represented by arg(desc) */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/


#endif
