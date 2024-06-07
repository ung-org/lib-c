#include <string.h>
#include "_safety.h"

/** transform string **/

size_t strxfrm(char * restrict s1, const char * restrict s2, size_t n)
{
	/* TODO */
	(void)s1; (void)s2; (void)n;
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s2);
	ASSERT_NOOVERLAP(s1, n, s2, n);

	if (n != 0) {
		ASSERT_NONNULL(s1);
		ASSERT_NOOVERLAP(s1, n, s2, n);
	}
	
	return strlen(s2);
}

CHECK_3(size_t, 0, strxfrm, char * restrict, const char * restrict, size_t)

/***
transforms up to ARGUMENT(n) bytes of the string at ARGUMENT(s2),
placing the transformed string at ARGUMENT(s1). The transformed string is the
canonical form of the string used for collation purposes. If a CHAR(\0) is
transformed, no further characters are transformed.
***/

/*
UNDEFINED(ARGUMENT(n) is not ZERO and ARGUMENT(s1) is CONSTANT(NULL))
RETURN_ALWAYS(the length of the transformed string, not including the terminating CHAR(\0));
STDC(1)
*/
