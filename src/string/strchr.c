#include <string.h>
#include "_assert.h"

/** string search **/

char * strchr(const char *s, int c)
{
	ASSERT_NONNULL(s);

	/*
	RETURN_FAILURE(CONSTANT(NULL));
	RETURN_SUCCESS(a pointer to the located character);
	*/
	return (char*)memchr(s, (char)c, strlen(s));
}

/***
searches the string ARGUMENT(s) for the first occurrence of
ARGUMENT(c) (converted to a TYPE(char)).
***/

/*
STDC(1)
*/
