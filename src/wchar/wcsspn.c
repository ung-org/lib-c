#if 0

#include <wchar.h>

size_t wcsspn(const wchar_t * s1, const wchar_t * s2)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	size_t i;
	for (i = 0; s1[i] != L'\0'; i++) {
		if (wcschr(s2, s1[i]) == NULL) {
			return i;
		}
	}

	return 0;
}

/*
STDC(199409)
*/


#endif
