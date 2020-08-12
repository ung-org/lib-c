#include <string.h>
#include "../_assert.h"

/** find string length **/
size_t strlen(const char *s)
{
	size_t i = 0;

	ASSERT_NONNULL(s);

	for (i = 0; s[i] != '\0'; i++) {
		continue;
	}

	return i;
}

/***
counts the number of bytes in the string ARGUMENT(s), not
including the terminating null character.
***/
/*
	RETURN_ALWAYS(the length of the string);
STDC(1)
*/
