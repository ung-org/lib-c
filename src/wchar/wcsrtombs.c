#include <wchar.h>

size_t wcsrtombs(char * restrict dst, const wchar_t ** restrict src, size_t len, mbstate_t * restrict ps)
{
	(void)dst; (void)src; (void)len; (void)ps;
	return 0;
}

/*
STDC(199409)
*/
