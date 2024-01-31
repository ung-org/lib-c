#include <stddef.h>
#include <errno.h>
#include <inttypes.h>
#include <wctype.h>
#include "_safety.h"

#define isspace iswspace

uintmax_t wcstoumax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(nptr, wcslen(nptr), endptr, sizeof(*endptr));

	uintmax_t ret = 0;
	uintmax_t max = UINTMAX_MAX;
	uintmax_t min = 0;

	#include "stdlib/_strtoi.h"

	return ret;
}

__check_3(uintmax_t, 0, wcstoumax, const wchar_t * restrict, wchar_t ** restrict, int)

/*
STDC(199901)
*/
