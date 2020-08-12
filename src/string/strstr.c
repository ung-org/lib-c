#include <string.h>
#include "../_assert.h"

/** search for substring **/
char * strstr(const char *s1, const char *s2)
{
	size_t l1 = 0;
	size_t l2 = 0;
	char *p = (char*)s1;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	l2 = strlen(s2);
	if (l2 == 0) {
		return p;
	}

	l1 = strlen(s1);
	
	do {
		p = memchr(p, *s2, l1);
		if (p == NULL || strcmp(p + 1, s2 + 1) == 0) {
			break;
		}
		p++;
	} while (p < s1 + l2);

	/*
	RETURN_FAILURE(CONSTANT(NULL));
	RETURN_SUCCESS(a pointer to the located string);
	*/
	return p;
}

/***
finds the first occurrence of the string ARGUMENT(s2) in the string
ARGUMENT(s1). Specifying the empty string for ARGUMENT(s2) matches the first
character of ARGUMENT(s1).
***/
/*
STDC(1)
*/
