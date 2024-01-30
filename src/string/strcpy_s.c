#include <string.h>
#include <limits.h>
#include "_safety.h"

/** copy string **/
errno_t strcpy_s(char * restrict s1, rsize_t s1max, const char * restrict s2)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s1max, s2, strlen(s2));

	strncpy(s1, s2, strlen(s2));
	return 0;
}

/***
The fn(strcpy) function copies the string at arg(s2) to arg(s1), up to and
including the terminating char(\0).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: if arg(s1) and arg(s2) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
