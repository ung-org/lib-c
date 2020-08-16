#include <string.h>
#include "_assert.h"

/** search string from end **/

char * strrchr(const char *s, int c)
{
	int i = 0;

	ASSERT_NONNULL(s);

	for (i = strlen(s) + 1; i >= 0; i--) {
		if (s[i] == (char)c) {
			return (char*)s + i;
		}
	}

	/*
	RETURN_SUCCESS(a pointer to the found character);
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return NULL;
}

/***
finds the last occurence of ARGUMENT(c) (converted to TYPE(char)) in the
string ARGUMENT(s).
***/

/*
STDC(1)
*/
