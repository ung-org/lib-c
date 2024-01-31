#include <string.h>
#include "_safety.h"

/** concatenate strings **/
errno_t strcat_s(char * restrict s1, rsize_t s1max, const char * restrict s2)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s1max, s2, strlen(s2));

	return 0;
}

__check_3(errno_t, 0, strcat_s, char * restrict, rsize_t, const char * restrict)

/***
The fn(strcat) function appends a copy of the string at arg(s2) to the end of
the string at arg(s1). The first byte of arg(s2) will overwrite the terminating
null character of arg(s1).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: if arg(s1) and arg(s2) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
