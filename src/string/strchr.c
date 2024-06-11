#include <string.h>
#include "_safety.h"

/** string search **/

char * strchr(const char *s, int c)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);
	DANGEROUS_READ(s, -1);
	size_t len = strlen(s);
	DANGER_OVER();

	/*
	RETURN_FAILURE(CONSTANT(NULL));
	RETURN_SUCCESS(a pointer to the located character);
	*/
	return (char*)memchr(s, (char)c, len);
}

CHECK_2(char *, 0, strchr, const char *, int)

/***
searches the string ARGUMENT(s) for the first occurrence of
ARGUMENT(c) (converted to a TYPE(char)).
***/

/*
STDC(1)
*/
