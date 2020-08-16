#include "string.h"
#include "stdlib.h"
#include "sys/_nonstd_.h"

/** move memory **/
errno_t memmove_s(void *s1, rsize_t s1max, const void *s2, rsize_t n)
{
	__C_EXT(1, 201112L);
	__ASSERT_NONNULL(s1);
	__ASSERT_NONNULL(s2);

	void *buf = malloc(n);
	memcpy(buf, s2, n);
	memcpy(s1, buf, n);
	free(buf);
	return s1;
}

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
