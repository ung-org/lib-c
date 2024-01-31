#if 0

#include <wchar.h>

wchar_t * wcschr(const wchar_t * s, wchar_t c)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	while (*s) {
		if (*s == c) {
			return (wchar_t*) s;
		}
		s++;
	}

	return NULL;
}

/*
STDC(199409)
*/


#endif
