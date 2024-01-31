#if 0

#include <wchar.h>

size_t mbsrtowcs(wchar_t * restrict dst, const char * restrict src, size_t len, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	(void)dst; (void)src; (void)len; (void)ps;
	return 0;
}

/*
STDC(199409)
*/


#endif
