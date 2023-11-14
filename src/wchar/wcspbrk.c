#if 0

#include <wchar.h>

wchar_t * wcspbrk(const wchar_t * s1, const wchar_t * s2)
{
	int i;
	for (i = 0; s1[i] != L'\0'; i++) {
		if (wcschr(s2, s1[i]) != NULL) {
			return (wchar_t*)s1 + i;
		}
	}

	return NULL;
}

/*
STDC(199409)
*/


#endif
