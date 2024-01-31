#include <stddef.h>
#include <ctype.h>
#include <errno.h>
#include <inttypes.h>
#include <string.h>
#include "_safety.h"

uintmax_t strtoumax(const char *restrict nptr, char ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(nptr, strlen(nptr), endptr, sizeof(*endptr));

	uintmax_t ret = 0;
	uintmax_t max = UINTMAX_MAX;
	uintmax_t min = 0;

	#include "stdlib/_strtoi.h"

	return ret;
}

CHECK_3(uintmax_t, 0, strtoumax, const char *restrict, char ** restrict, int)

/*
STDC(199901)
*/
