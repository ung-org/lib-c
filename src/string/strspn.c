#include <string.h>
#include "_safety.h"

/** count matching characters **/

size_t strspn(const char *s1, const char *s2)
{
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	for (i = 0; i < strlen (s1); i++) {
		if (strchr(s2, s1[i]) == NULL) {
			break;
		}
	}

	return i;
}

CHECK_2(size_t, 0, strspn, const char *, const char *)

/***
computes the length of the maximum initial segment of the ARGUMENT(s1) made
up of characters from ARGUMENT(s2).
***/

/*
RETURN_ALWAYS(the number of matching characters);
STDC(1)
*/
