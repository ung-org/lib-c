#if 0

#include <string.h>

/** fill memory **/
errno_t memset_s(void *s, rsize_t smax, int c, rsize_t n)
{
	__C_EXT(1, 201112L);
	__ASSERT_NONNULL(s);

	unsigned char *_s = (unsigned char *)s;
	int i = 0;

	while (i < n) {
		_s[i] = (unsigned char)c;
	}

	return s;
}

/***
The fn(memset) function fills the first arg(n) bytes of memory at arg(s) with
the value arg(c) (converted to an type(unsigned char)).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: the value of arg(s) */

/*
CEXT1(201112)
*/


#endif
