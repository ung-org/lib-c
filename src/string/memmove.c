#include <string.h>
#include "nonstd/assert.h"

/** move memory **/
void * memmove(void *s1, const void *s2, size_t n)
{
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	if (s1 < s2) {
		return memcpy(s1, s2, n);
	}

	/* reverse memcpy() */
	while (n > 0) {
		((char*)s1)[n] = ((char*)s2)[n];
		n--;
	}
	/* last byte */
	((char*)s1)[n] = ((char*)s2)[n];

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return s1;
}

/***
copies ARGUMENT(n) bytes of memory from the object at
ARGUMENT(s2) to the object at ARGUMENT(s1). If ARGUMENT(s1) and ARGUMENT(s2) overlap, the memory
is copied so that the ARGUMENT(n) bytes are safely written to ARGUMENT(s1).
***/
/*
STDC(1)
*/
