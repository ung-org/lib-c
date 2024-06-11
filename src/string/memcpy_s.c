#include <string.h>
#include "_safety.h"

/** copy memory **/
errno_t memcpy_s(void * restrict s1, rsize_t s1max, const void * restrict s2, rsize_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, s1max, s2, n);
	DANGEROUS_READ(s2, n);
	DANGEROUS_WRITE(s1, s1max);

	char *dst = (char*)s1, *src = (char*)s2;
	rsize_t i = 0;
	while (i < n) {
		dst[i] = src[i];
		i++;
	}

	DANGER_OVER();

	return 0;
}

CHECK_4(errno_t, 0, memcpy_s, void * restrict, rsize_t, const void * restrict, rsize_t)

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
