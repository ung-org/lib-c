#if 0

#include <wchar.h>

size_t wcsftime(wchar_t * restrict s, size_t maxsize, const wchar_t * restrict format, const struct tm * restrict timeptr)
{
	SIGNAL_SAFE(0);

	(void)s; (void)maxsize; (void)format; (void)timeptr;
	return 0;
}

/*
STDC(199409)
*/


#endif
