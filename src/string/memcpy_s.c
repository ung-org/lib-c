#include "string.h"
#include "sys/_nonstd_.h"

/** copy memory **/
errno_t memcpy_s(void * restrict s1, rsize_t s1max, const void * restrict s2, rsize_t n)
{
	__C_EXT(1, 201112L);
	__ASSERT_NONNULL(s1);
	__ASSERT_NONNULL(s2);
	__ASSERT_NOOVERLAP(s1, s2, n);

	char *dst = (char*)s1, *src = (char*)s2;
	int i = 0;
	while (i < n) {
		dst[i] = src[i];
		i++;
	}
	return dst;
}

/***
The fn(memcpy) copies arg(n) bytes from the object at arg(s2) to the object at
arg(s1).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: if the objects overlap */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s1) */

/*
CEXT1(201112)
*/
