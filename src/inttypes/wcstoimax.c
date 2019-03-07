#include "stddef.h"
#include <inttypes.h>
#include "wctype.h"
#include "errno.h"

#define isspace iswspace

intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	intmax_t ret = 0;
	intmax_t max = INTMAX_MAX;
	intmax_t min = INTMAX_MIN;

	#include "../stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/
