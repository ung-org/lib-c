#include <string.h>
#include "_safety.h"

/** search string from end **/

char * strrchr(const char *s, int c)
{
	int i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);

	DANGEROUS_READ(s, -1);
	for (i = strlen(s) + 1; i >= 0; i--) {
		if (s[i] == (char)c) {
			DANGER_OVER();
			return (char*)s + i;
		}
	}
	DANGER_OVER();

	/*
	RETURN_SUCCESS(a pointer to the found character);
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return NULL;
}

CHECK_2(char *, 0, strrchr, const char *, int)

/***
finds the last occurence of ARGUMENT(c) (converted to TYPE(char)) in the
string ARGUMENT(s).
***/

/*
STDC(1)
*/
