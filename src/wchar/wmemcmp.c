#if 0

#include <wchar.h>

int wmemcmp(const wchar_t * s1, const wchar_t * s2, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++) {
		if (s1[i] > s2[i]) {
			return 1;
		} else if (s1[i] < s2[i]) {
			return -1;
		}
	}

	return 0;
}

/*
STDC(199409)
*/


#endif
