#include <stddef.h>
#include <errno.h>
#include <inttypes.h>
#include <wctype.h>
#include "_safety.h"
#undef wcstoimax

#define isspace iswspace

intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);

	intmax_t ret = 0;
	intmax_t max = INTMAX_MAX;
	intmax_t min = INTMAX_MIN;

	#include "stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/
