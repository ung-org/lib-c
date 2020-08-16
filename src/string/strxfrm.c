#include <string.h>
#include "_assert.h"

/** transform string **/

size_t strxfrm(char * restrict s1, const char * restrict s2, size_t n)
{
	/* TODO */
	(void)s1; (void)s2; (void)n;
	ASSERT_NONNULL(s2);

	if (n != 0) {
		ASSERT_NONNULL(s1);
		ASSERT_NOOVERLAP(s1, s2, n);
	}
	
	return 0;
}

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
