#include <string.h>
#include "_safety.h"

/** concatenate bounded string **/
errno_t strncat_s(char * restrict s1, rsize_t s1max, const char * restrict s2, rsize_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s1max, s2, n);

	char *append = s1 + strlen(s1);
	for (size_t i = 0; i < n; i++) {
		*append = s2[i];
		if (*append == '\0') {
			break;
		}
		append++;
	}

	if (append[-1] != '\0') {
		*append = '\0';
	}

	return 0;
}

__check_4(errno_t, 0, strncat_s, char * restrict, rsize_t, const char * restrict, rsize_t)

/***
The fn(strncat) function appends a copy of the frist arg(n) bytes of the string
at arg(s2) to the end of the string at arg(s1). The first byte of arg(s2) will
overwrite the terminating null character of arg(s1). No characters after the
first char(\0) will be copied. The resulting string will always be null
terminated.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: arg(s1) and arg(s2) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
