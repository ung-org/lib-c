#include <string.h>
#include "_safety.h"

/** compare memory regions **/

int memcmp(const void *s1, const void *s2, size_t n)
{
	unsigned char *p = (void*)s1;
	unsigned char *q = (void*)s2;
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	/* no modifications, so overlap is OK */

	/* TODO: TWO dangerous reads */

	for (i = 0; i < n; i++) {
		if (p[i] != q[i]) {
			return p[i] - q[i];
		}
	}

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) is less than ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) and ARGUMENT(s2) are equal);
	RETURN(POSITIVE(), ARGUMENT(s1) is greater than ARGUMENT(s2));
	*/
	return 0;
}

CHECK_3(int, 0, memcmp, const void *, const void *, size_t)

/***
compares the first ARGUMENT(n) bytes of memory at ARGUMENT(s1)
and ARGUMENT(s2).
***/

/*
STDC(1)
*/
