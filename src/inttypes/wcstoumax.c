#if 0

#include <stddef.h>
#include <errno.h>
#include <inttypes.h>
#include <wctype.h>

#define isspace iswspace

uintmax_t wcstoumax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	uintmax_t ret = 0;
	uintmax_t max = UINTMAX_MAX;
	uintmax_t min = 0;

	#include "stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/


#endif
