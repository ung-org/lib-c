#include <string.h>
#include "_safety.h"

/** compare strings **/

int strcmp(const char *s1, const char *s2)
{
	SIGNAL_SAFE(0);
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

__check_2(int, 0, strcmp, const char *, const char *)

/***
compares the strings at ARGUMENT(s1) and ARGUMENT(s2).
***/

/*
STDC(1)
*/
