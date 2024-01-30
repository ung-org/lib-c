#include <string.h>
#include "_safety.h"

/** fill memory **/

void * memset(void *s, int c, size_t n)
{
	unsigned char *p = (unsigned char *)s;
	size_t i = 0;

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);

	for (i = 0; i < n; i++) {
		p[i] = (unsigned char)c;
	}

	/*
	RETURN_ALWAYS(ARGUMENT(s));
	*/
	return s;
}

/***
fills the first ARGUMENT(n) bytes of memory at ARGUMENT(s) with
the value ARGUMENT(c) (converted to an TYPE(unsigned char)).
***/

/*
STDC(1)
*/
