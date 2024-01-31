#if 0

#include <wchar.h>
#include "_safety.h"

wchar_t * wmemchr(const wchar_t * s, wchar_t c, size_t n)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	size_t i;

	ASSERT_NONNULL(s);

	for (i = 0; i < n; i++) {
		if (s[i] == c) {
			return (wchar_t*)s + i;
		}
	}

	return NULL;
}

/*
STDC(199409)
*/


#endif
