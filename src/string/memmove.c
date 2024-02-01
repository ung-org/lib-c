#include <string.h>
#include "_safety.h"

/** move memory **/

void * memmove(void *s1, const void *s2, size_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	if (s1 < s2) {
		for (size_t i = 0; i < n; i++) {
			((char*)s1)[i] = ((char*)s2)[i];
		}
	} else {
		while (n > 0) {
			((char*)s1)[n] = ((char*)s2)[n];
			n--;
		}
		/* last byte */
		((char*)s1)[n] = ((char*)s2)[n];
	}

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return s1;
}

CHECK_3(void *, 0, memmove, void *, const void *, size_t)

/***
copies ARGUMENT(n) bytes of memory from the object at
ARGUMENT(s2) to the object at ARGUMENT(s1). If ARGUMENT(s1) and ARGUMENT(s2) overlap, the memory
is copied so that the ARGUMENT(n) bytes are safely written to ARGUMENT(s1).
***/

/*
STDC(1)
*/
