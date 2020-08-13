#include <wchar.h>
#include "_assert.h"

int wcscmp(const wchar_t * s1, const wchar_t * s2)
{
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	while (*s1 == *s2 && *s1 != L'\0') {
		s1++;
		s2++;
	}

	if (*s1 > *s2) {
		return 1;
	} else if (*s1 < *s2) {
		return -1;
	}

	return 0;
}

/*
STDC(199409)
*/
