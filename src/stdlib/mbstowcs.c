#if 0

#include <stdlib.h>

/** convert multibyte string to wide character string **/

size_t mbstowcs(wchar_t * restrict pwcs, const char * restrict s, size_t n)
{
	/* FIXME: forward dependency on AMD1 */
	#if 0
	mbstate_t ps = 0;
	return mbsrtowcs(pwcs, s, n, &ps);
	#else
	(void)pwcs; (void)s;
	return n;
	#endif
}

/***
converts the string of multibyte characters ARGUMENT(s)
to a string of wide characters, which are stored at ARGUMENT(pwcs). No more than
ARGUMENT(n) wide characters are stored at ARGUMENT(pwcs). No further
characters will be converted after a null character, which is converted.
***/

/*
UNDEFINED(The memory regions of ARGUMENT(s) and ARGUMENT(pwcs) overlap)
LC_CTYPE
RETURN_FAILURE(-1)
RETURN_SUCCESS(the number of wide characters converted, not counting any terminating zero)
STDC(1)
*/


#endif
