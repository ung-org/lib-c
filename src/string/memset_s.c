#include <string.h>
#include "_safety.h"

/** fill memory **/
errno_t memset_s(void *s, rsize_t smax, int c, rsize_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);

	unsigned char *_s = (unsigned char *)s;
	rsize_t i = 0;

	while (i < n && i < smax) {
		_s[i] = (unsigned char)c;
	}

	return 0;
}

CHECK_4(errno_t, 0, memset_s, void *, rsize_t, int, rsize_t)

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
