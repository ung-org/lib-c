#if 0

#include <wchar.h>
#include <wctype.h>
#include <limits.h>
#include <errno.h>

#define isspace iswspace

long int wcstol(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	long int ret = 0;
	long int max = LONG_MAX;
	long int min = LONG_MIN;

	#include "stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199409)
*/


#endif
