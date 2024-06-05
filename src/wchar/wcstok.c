#include <wchar.h>
#include "_wchar.h"

wchar_t * wcstok(wchar_t * restrict s1, const wchar_t * restrict s2, wchar_t ** restrict ptr)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */
	if (s1 == NULL) {
		ASSERT_PREV(*ptr, __wchar_h.wcstok, __wchar_h.nwcstok, "wcstok");
	}

	(void)s1; (void)s2;
	*ptr = s1;
	ADD_PREV(*ptr, __wchar_h.wcstok, __wchar_h.nwcstok);

	return s1;
}

/*
STDC(199409)
*/
