#include <stddef.h>
#include <ctype.h>
#include <errno.h>
#include <inttypes.h>
#include "_safety.h"
#undef strtoimax

intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr, int base)
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
