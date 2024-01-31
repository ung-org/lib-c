#include <stddef.h>
#include <ctype.h>
#include <errno.h>
#include <inttypes.h>
#include <string.h>
#include "_safety.h"

intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr, int base)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(nptr, strlen(nptr), endptr, sizeof(*endptr));

	intmax_t ret = 0;
	intmax_t max = INTMAX_MAX;
	intmax_t min = INTMAX_MIN;

	#include "stdlib/_strtoi.h"

	return ret;
}

CHECK_3(intmax_t, 0, strtoimax, const char * restrict, char ** restrict, int)

/*
STDC(199901)
*/
