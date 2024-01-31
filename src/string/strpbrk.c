#include <string.h>
#include "_safety.h"
#undef strpbrk

/** count matching characters **/

char * strpbrk(const char *s1, const char *s2)
{
	size_t i;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	for (i = 0; i < strlen (s1); i++) {
		if (strchr(s2, s1[i]) != NULL) {
			return (char*)s1 + i;
		}
	}

	return NULL;
}

CHECK_2(char *, 0, strpbrk, const char *, const char *)

/***
locates the first occurence in ARGUMENT(s1) of any character in ARGUMENT(s2).
***/

/*
RETURN_FAILURE(CONSTANT(NULL));
RETURN_SUCCESS(a pointer to the located character);
STDC(1)
*/
