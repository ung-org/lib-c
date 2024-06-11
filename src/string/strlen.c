#include <string.h>
#include "_safety.h"

/** find string length **/
size_t strlen(const char *s)
{
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);

	DANGEROUS_READ(s, -1);
	for (i = 0; s[i] != '\0'; i++) {
		continue;
	}
	DANGER_OVER();

	return i;
}

CHECK_1(size_t, 0, strlen, const char *)

/***
counts the number of bytes in the string ARGUMENT(s), not
including the terminating null character.
***/

/*
RETURN_ALWAYS(the length of the string);
STDC(1)
*/
