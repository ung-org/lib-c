#include <string.h>
#include "_safety.h"

/** count non-matching characters **/

size_t strcspn(const char *s1, const char *s2)
{
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	/* TODO: two dangerous reads */
	/* no modification, overlap is OK */

	for (i = 0; s1[i] != '\0'; i++) {
		if (strchr (s2, s1[i]) != NULL) {
			break;
		}
	}

	return i;
}

CHECK_2(size_t, 0, strcspn, const char *, const char *)

/***
the number of characters that the beginning of
the string ARGUMENT(s1) that are not in the string ARGUMENT(s2).
***/

/*
RETURN_ALWAYS(the number of non-matching characters);
STDC(1)
*/
