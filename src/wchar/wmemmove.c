#include <wchar.h>
#include <stdlib.h>
#include "_assert.h"

wchar_t * wmemmove(wchar_t * s1, const wchar_t * s2, size_t n)
{
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	if (s1 < s2) {
		return wmemcpy(s1, s2, n);
	}

	/* reverse memcpy() */
	while (n > 0) {
		s1[n] = s2[n];
		n--;
	}
	/* last byte */
	s1[n] = s2[n];

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return s1;
}

/*
STDC(199409)
*/
