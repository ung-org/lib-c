#include <stddef.h>
#include <errno.h>
#include <inttypes.h>
#include <wctype.h>
#include "_safety.h"

#define isspace iswspace

intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(nptr, wcslen(nptr), endptr, sizeof(*endptr));

	intmax_t ret = 0;
	intmax_t max = INTMAX_MAX;
	intmax_t min = INTMAX_MIN;

	#include "stdlib/_strtoi.h"

	return ret;
}

__check_3(intmax_t, 0, wcstoimax, const wchar_t * restrict, wchar_t **restrict, int)

/*
STDC(199901)
*/
