#include <stdlib.h>
#include "_stdlib.h"

/** convert wide character string to multibyte string **/
errno_t wcstombs_s(size_t * restrict retval, char * restrict dst, rsize_t dstmax, const wchar_t * restrict src, rsize_t len)
{
	SIGNAL_SAFE(0);
	(void)retval; (void)dst; (void)dstmax; (void)src; (void)len;
	/* TODO */
	return 0;
}

/***
The fn(wcstombs) function converts the wide character string arg(pwcs) to a
multibyte string, which is stored at arg(s), beginning in the initial shift
state. No more than arg(n) bytes are written to arg(s). Conversion stops
after reaching a null wide character, which is converted and stored.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: the memory regions of arg(s) and arg(pwcs) overlap */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/* RETURN(-1): a code was encountered which does not correspond to a valid multibyte character */
/* RETURN: the number of bytes modified, not counting any terminating null */

/*
CEXT1(201112)
*/
