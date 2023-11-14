#if 0

#include <stdlib.h>

/** convert multibyte string to wide character string **/
errno_t mbstowcs_s(size_t * restrict retval, wchar_t * restrict dst, rsize_t dstmax, const char * restrict src, rsize_t len)
{
	__C_EXT(1, 201112L);
}

/***
The fn(mbstowcs) function converts the string of multibyte characters arg(s)
to a string of wide characters, which are stored at arg(pwcs). No more than
arg(n) wide characters are stored at arg(pwcs). No further characters will
be converted after a null character, which is converted.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: the memory regions of arg(s) and arg(pwcs) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/* RETURN(-1): an invalid multibyte character was encountered */
/* RETURN: the number of wide characters converted, not counting any terminating zero */

/*
CEXT1(201112)
*/


#endif
