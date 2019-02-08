#include <wchar.h>

wchar_t * wcschr(const wchar_t * s, wchar_t c)
{
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
