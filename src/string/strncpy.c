#include <string.h>
#include "../_assert.h"

/** copy bounded string **/
char * strncpy(char * restrict s1, const char * restrict s2, size_t n)
{
	size_t i;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s2, n);

	for (i = 0; i < n; i++) {
		s1[i] = s2[i];
		if (s1[i] == '\0') {
			memset(s1 + i, '\0', n - i);
			break;
		}
	}

	return s1;
}

/***
copies up to ARGUMENT(n) bytes from the string at ARGUMENT(s2)
to ARGUMENT(s1). If a CHAR(\0) is encountered, null characters are appended to
ARGUMENT(s1) until ARGUMENT(n) bytes have been written. If no null characters are copied
in the first ARGUMENT(n) bytes of ARGUMENT(s2), the resulting string will not be null
terminated.
***/
/*
	RETURN_ALWAYS(ARGUMENT(s1));
STDC(1)
*/
