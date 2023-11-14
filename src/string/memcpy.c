#if 0

#include <string.h>
#include "_assert.h"

/** copy memory **/

void * memcpy(void * restrict s1, const void * restrict s2, size_t n)
{
	char *dst = (char*)s1;
	char *src = (char*)s2;
	size_t i = 0;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s2, n);

	for (i = 0; i < n; i++) {
		dst[i] = src[i];
	}

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return dst;
}

/***
copies ARGUMENT(n) bytes from the object at ARGUMENT(s2) to the object at
ARGUMENT(s1).
***/

/*
STDC(1)
*/


#endif
