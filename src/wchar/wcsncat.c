#if 0

#include <wchar.h>

wchar_t * wcsncat(wchar_t * restrict s1, const wchar_t * restrict s2, size_t n)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	wcsncpy(s1 + wcslen(s1), s2, n);
	/* ensure trailing nul */
	return s1;
}

/*
STDC(199409)
*/


#endif
