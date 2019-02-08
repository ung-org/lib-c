#include <string.h>
#include "nonstd/assert.h"

/** compare bound strings **/
int strncmp(const char *s1, const char *s2, size_t n)
{
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	if (strlen(s1) < n) {
		n = strlen(s1);
	}
	if (strlen(s2) < n) {
		n = strlen(s2);
	}

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) is less than ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) is equal to ARGUMENT(s2));
	RETURN(POSITIVE, ARGUMENT(s1) is greater than ARGUMENT(s2));
	*/
	return memcmp(s1, s2, n);
}

/***
compares up to the first ARGUMENT(n) bytes of the strings at ARGUMENT(s1) and
ARGUMENT(s2), or until the first CHAR(\0), whichever comes first.
***/
/*
STDC(1)
*/
