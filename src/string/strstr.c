#include <string.h>
#include "_safety.h"

/** search for substring **/

char * strstr(const char *s1, const char *s2)
{
	size_t l1 = 0;
	size_t l2 = 0;
	char *p = (char*)s1;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	l1 = strlen(s1);
	l2 = strlen(s2);
	
	for (p = (char*)s1; p < s1 + l1 - l2; p = strchr(p + 1, *s2)) {
		if (p == NULL || strncmp(p, s2, l2) == 0) {
			break;
		}
	}

	/*
	RETURN_FAILURE(CONSTANT(NULL));
	RETURN_SUCCESS(a pointer to the located string);
	*/
	return p;
}

CHECK_2(char *, 0, strstr, const char *, const char *)

/***
finds the first occurrence of the string ARGUMENT(s2) in the string
ARGUMENT(s1). Specifying the empty string for ARGUMENT(s2) matches the first
character of ARGUMENT(s1).
***/

/*
STDC(1)
*/
