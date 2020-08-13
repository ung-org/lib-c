#include <string.h>
#include "_assert.h"

/** count non-matching characters **/
size_t strcspn(const char *s1, const char *s2)
{
	size_t i = 0;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	for (i = 0; s1[i] != '\0'; i++) {
		if (strchr (s2, s1[i]) != NULL) {
			break;
		}
	}

	return i;
}

/***
the number of characters that the beginning of
the string ARGUMENT(s1) that are not in the string ARGUMENT(s2).
***/
/*
	RETURN_ALWAYS(the number of non-matching characters);
STDC(1)
*/
