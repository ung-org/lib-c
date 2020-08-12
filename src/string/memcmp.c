#include <string.h>
#include "../_assert.h"

/** compare memory regions **/
int memcmp(const void *s1, const void *s2, size_t n)
{
	unsigned char *p = (unsigned char*)s1;
	unsigned char *q = (unsigned char*)s2;
	size_t i = 0;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	for (i = 0; i < n; i++) {
		if (p[i] != q[i]) {
			break;
		}
	}

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) is less than ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) and ARGUMENT(s2) are equal);
	RETURN(POSITIVE(), ARGUMENT(s1) is greater than ARGUMENT(s2));
	*/
	return p[i] - q[i];
}

/***
compares the first ARGUMENT(n) bytes of memory at ARGUMENT(s1)
and ARGUMENT(s2).
***/
/*
STDC(1)
*/
