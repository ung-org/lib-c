#if 0

#include <wchar.h>
#include <limits.h>
#include <errno.h>
#include <wctype.h>

#define isspace iswspace

unsigned long long int wcstoull(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);

	unsigned long long int ret = 0;
	unsigned long long int max = ULLONG_MAX;
	unsigned long long int min = 0;

	#include "stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/


#endif
