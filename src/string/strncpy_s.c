#include <string.h>
#include "_safety.h"

/** copy bounded string **/
errno_t strncpy_s(char * restrict s1, rsize_t s1max, const char * restrict s2, rsize_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s1max, s2, n);

	size_t i;
	for (i = 0; i < n; i++) {
		s1[i] = s2[i];
		if (s1[i] == '\0') {
			break;
		}
	}

	while (i < n) {
		s1[i++] = '\0';
	}

	return 0;
}

/***
The fn(strncpy) function copies up to arg(n) bytes from the string at arg(s2)
to arg(s1). If a char(\0) is encountered, null characters are appended to
arg(s1) until arg(n) bytes have been written. If no null characters are copied
in the first arg(n) bytes of arg(s2), the resulting string will not be null
terminated.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: if arg(s1) and arg(s2) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
