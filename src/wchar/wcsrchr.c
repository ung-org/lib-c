#if 0

#include <wchar.h>

wchar_t * wcsrchr(const wchar_t * s, wchar_t c)
{
	SIGNAL_SAFE(0);

	wchar_t *last = NULL;
	while (*s) {
		if (*s == c) {
			last = (wchar_t*)s;
		}
		s++;
	}
	return last;
}

/*
STDC(199409)
*/


#endif
