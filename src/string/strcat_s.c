#include "string.h"

/** concatenate strings **/
errno_t strcat_s(char * restrict s1, rsize_t s1max, const char * restrict s2)
{
	__C_EXT(1, 201112L);
	__ASSERT_NONNULL(s1);
	__ASSERT_NONNULL(s2);
	__ASSERT_NOOVERLAP(s1, s2, strlen(s1) + strlen(s2));

	return strncat(s1, s2, strlen(s2));
}

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
