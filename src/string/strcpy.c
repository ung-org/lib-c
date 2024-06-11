#include <string.h>
#include "_safety.h"

/** copy string **/

char * strcpy(char * restrict s1, const char * restrict s2)
{
	char *p = s1;
	size_t len = 0;

	SIGNAL_SAFE(0);

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	DANGEROUS_READ(s2, 0);
	len = strlen(s2);
	ASSERT_NOOVERLAP(s1, len, s2, len);
	DANGEROUS_WRITE(s1, len);

	while ((*s1++ = *s2++) != '\0') {
		continue;
	}

	DANGER_OVER();

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	return p;
}

CHECK_2(char *, 0, strcpy, char * restrict, const char * restrict)

/***
copies the string at ARGUMENT(s2) to ARGUMENT(s1), up to and
including the terminating CHAR(\0).
***/

/*
STDC(1)
*/
