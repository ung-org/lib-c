#include "stddef.h"
#include <inttypes.h>
#include "errno.h"

intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr, int base)
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
