#include <wchar.h>
#include "limits.h"
#include "errno.h"

long int wcstol(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	long int ret = 0;
	long int max = LONG_MAX;
	long int min = LONG_MIN;

	#include "../stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199409)
*/
