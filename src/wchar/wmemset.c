#if 0

#include <wchar.h>

wchar_t * wmemset(wchar_t * s, wchar_t c, size_t n)
{
	SIGNAL_SAFE(0);

	size_t i;
	for (i = 0; i < n; i++) {
		s[i] = c;
	}
	return s;
}

/*
STDC(199409)
*/


#endif
