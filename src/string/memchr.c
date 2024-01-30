#include <string.h>
#include "_safety.h"

/** search memory **/

void * memchr(const void *s, int c, size_t n)
{
	SIGNAL_SAFE(0);

	char *p = (char*)s;
	size_t i = 0;

	ASSERT_NONNULL(s);

	for (i = 0; i < n; i++) {
		if (p[i] == (unsigned char)c) {
			return p + i;
		}
	}

	/*
	RETURN_FAILURE(CONSTANT(NULL));
	RETURN_SUCCESS(a pointer to the located byte);
	*/
	return NULL;
}

/***
searches the first ARGUMENT(n) bytes of memory at ARGUMENT(s) for
ARGUMENT(c) (converted to an TYPE(unsigned char)).
***/

/*
STDC(1)
*/
