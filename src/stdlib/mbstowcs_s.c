#include <stdlib.h>
#include "_stdlib.h"

/** convert multibyte string to wide character string **/
errno_t mbstowcs_s(size_t * restrict retval, wchar_t * restrict dst, rsize_t dstmax, const char * restrict src, rsize_t len)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(retval, sizeof(*retval), dst, dstmax);
	ASSERT_NOOVERLAP(retval, sizeof(*retval), src, len);
	ASSERT_NOOVERLAP(dst, dstmax, src, len);

	(void)retval; (void)dst; (void)dstmax; (void)src; (void)len;
	return 0;
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
