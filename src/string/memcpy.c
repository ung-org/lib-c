#include <string.h>
#include "_safety.h"

/** copy memory **/

void * memcpy(void * restrict s1, const void * restrict s2, size_t n)
{
	char *dst = (char*)s1;
	char *src = (char*)s2;
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, n, s2, n);
	DANGEROUS_READ(s2, n);
	DANGEROUS_WRITE(s1, n);

	for (i = 0; i < n; i++) {
		dst[i] = src[i];
	}

	DANGER_OVER();

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return dst;
}

CHECK_3(void *, 0, memcpy, void * restrict, const void * restrict, size_t)

/***
copies ARGUMENT(n) bytes from the object at ARGUMENT(s2) to the object at
ARGUMENT(s1).
***/

/*
STDC(1)
*/
