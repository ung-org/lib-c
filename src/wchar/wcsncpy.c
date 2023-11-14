#if 0

#include <wchar.h>

wchar_t * wcsncpy(wchar_t * restrict s1, const wchar_t * restrict s2, size_t n)
{
	size_t i;
	int nul = 0;
	for (i = 0; i < n; i++) {
		s1[i] = nul ? s2[i] : L'\0';
		if (s1[i] == L'\0') {
			nul = 1;
		}
	}
	return s1;
}

/*
STDC(199409)
*/


#endif
