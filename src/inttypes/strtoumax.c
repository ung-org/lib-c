#include "stddef.h"
#include <inttypes.h>
#include "ctype.h"
#include "errno.h"

uintmax_t strtoumax(const char *restrict nptr, char ** restrict endptr, int base)
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
