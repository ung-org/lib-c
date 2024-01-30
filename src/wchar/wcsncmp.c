#if 0

#include <wchar.h>
#include "_safety.h"

int wcsncmp(const wchar_t * s1, const wchar_t * s2, size_t n)
{
	SIGNAL_SAFE(0);

	size_t i;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

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
