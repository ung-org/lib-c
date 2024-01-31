#include <string.h>
#include "_safety.h"

/** concatenate strings **/
char * strcat(char * restrict s1, const char * restrict s2)
{
	size_t i = 0;
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, strlen(s1) + strlen(s2), s2, strlen(s2));

	/*
	RETURN_ALWAYS(ARGUMENT(s1));
	*/
	while (s1[i] != '\0') {
		i++;
	}

	strcpy(s1 + i, s2);
	return s1;
}

__check_2(char *, 0, strcat, char * restrict, const char * restrict)

/***
appends a copy of the string at ARGUMENT(s2) to the end of
the string at ARGUMENT(s1). The first byte of ARGUMENT(s2) will overwrite the terminating
null character of ARGUMENT(s1).
***/

/*
STDC(1)
*/
