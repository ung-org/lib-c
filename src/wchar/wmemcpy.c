#if 0

#include <wchar.h>

wchar_t * wmemcpy(wchar_t * restrict s1, const wchar_t * restrict s2, size_t n)
{
	SIGNAL_SAFE(0);

	size_t i;
	for (i = 0; i < n; i++) {
		s1[i] = s2[i];
	}
	return s1;
}

/*
STDC(199409)
*/


#endif
