#include <string.h>
#include "../_assert.h"

/** concatenate bounded string **/
char * strncat(char * restrict s1, const char * restrict s2, size_t n)
{
	char *append = NULL;
	size_t i;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s2, strlen(s1) + strlen(s2));

	append = s1 + strlen(s1);

	for (i = 0; i < n; i++) {
		append[i] = s2[i];
		if (append[i] == '\0') {
			break;
		}
	}

	if (append[i - 1] != '\0') {
		append[i] = '\0';
	}

	return s1;
}

/***
appends a copy of the frist ARGUMENT(n) bytes of the string
at ARGUMENT(s2) to the end of the string at ARGUMENT(s1). The first byte of ARGUMENT(s2) will
overwrite the terminating null character of ARGUMENT(s1). No characters after the
first CHAR(\0) will be copied. The resulting string will always be null
terminated.
***/
/*
	RETURN_ALWAYS(ARGUMENT(s1));
STDC(1)
*/
