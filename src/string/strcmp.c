#include <string.h>
#include "../_assert.h"

/** compare strings **/
int strcmp(const char *s1, const char *s2)
{
	size_t n1 = 0;
	size_t n2 = 0;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	n1 = strlen(s1);
	n2 = strlen(s2);

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) is less than ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) is equal to ARGUMENT(s2));
	RETURN(POSITIVE, ARGUMENT(s1) is greater than ARGUMENT(s2));
	*/
	return strncmp(s1, s2, n1 < n2 ? n1 : n2);
}

/***
compares the strings at ARGUMENT(s1) and ARGUMENT(s2).
***/
/*
STDC(1)
*/
