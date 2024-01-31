#if 0

#ifdef __STDC_VERSION__
#include <wchar.h>
#else
#include <stddef.h>
#include "wctype/wint_t.c"
#include "wctype/wctrans_t.c"
#define wcsstr __wcsstr
#include "wcsstr.c"
#endif

wchar_t * wcswcs(const wchar_t * s1, const wchar_t * s2)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	return wcsstr(s1, s2);
}

/*
XOPEN(4,700)
*/


#endif
