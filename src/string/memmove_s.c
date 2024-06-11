#include <string.h>
#include <stdlib.h>
#include "_safety.h"

/** move memory **/
errno_t memmove_s(void *s1, rsize_t s1max, const void *s2, rsize_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	DANGEROUS_READ(s2, n);
	DANGEROUS_WRITE(s1, s1max);
	/* Overlap is explicitly allowed */

	if (n > s1max) {
		/* do the right thing */
	}

	memmove(s1, s2, n);

	DANGER_OVER();

	return 0;
}

CHECK_4(errno_t, 0, memmove_s, void *, rsize_t, const void *, rsize_t)

/***
The fn(memmove) function copies arg(n) bytes of memory from the object at
arg(s2) to the object at arg(s1). If arg(s1) and arg(s2) overlap, the memory
is copied so that the arg(n) bytes are safely written to arg(s1).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
