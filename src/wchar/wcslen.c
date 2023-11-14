#if 0

#include <wchar.h>

size_t wcslen(const wchar_t * s)
{
	size_t l = 0;
	while (s[l] != L'\0') {
		l++;
	}
	return l;
}

/*
STDC(199409)
*/


#endif
