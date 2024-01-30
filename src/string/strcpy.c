#include <string.h>
#include "_safety.h"
#undef strcpy

/** copy string **/

char * strcpy(char * restrict s1, const char * restrict s2)
{
	char *p = s1;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, strlen(s2), s2, strlen(s2));

	while ((*s1++ = *s2++) != '\0') {
		continue;
	}

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return p;
}

/***
copies the string at ARGUMENT(s2) to ARGUMENT(s1), up to and
including the terminating CHAR(\0).
***/

/*
STDC(1)
*/
