#if 0

#include <string.h>
#include "_assert.h"

/** compare strings **/

int strcmp(const char *s1, const char *s2)
{
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	while (*s1 && *s2) {
		if (*s1 != *s2) {
			return *s1 - *s2;
		}
		s1++;
		s2++;
	}

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) is less than ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) is equal to ARGUMENT(s2));
	RETURN(POSITIVE, ARGUMENT(s1) is greater than ARGUMENT(s2));
	*/

	if (*s1) {
		return -1;
	}

	if (*s2) {
		return 1;
	}

	return 0;
}

/***
compares the strings at ARGUMENT(s1) and ARGUMENT(s2).
***/

/*
STDC(1)
*/


#endif
