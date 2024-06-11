#include <string.h>
#include "_safety.h"

/** concatenate bounded string **/

char * strncat(char * restrict s1, const char * restrict s2, size_t n)
{
	char *append = NULL;
	size_t i;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	DANGEROUS_READ(s1, n);
	size_t s1len = strlen(s1);
	DANGER_OVER();
	DANGEROUS_READ(s2, n);
	size_t s2len = strlen(s2);
	ASSERT_NOOVERLAP(s1, n, s2, s1len + s2len);
	DANGEROUS_WRITE(s1, n);

	append = s1 + s1len;

	for (i = 0; i < n; i++) {
		append[i] = s2[i];
		if (append[i] == '\0') {
			break;
		}
	}

	if (append[i - 1] != '\0') {
		append[i] = '\0';
	}

	DANGER_OVER();

	return s1;
}

CHECK_3(char *, 0, strncat, char * restrict, const char * restrict, size_t)

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
