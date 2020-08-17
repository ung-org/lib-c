#include <stddef.h>
#include <ctype.h>
#include <errno.h>
#include <inttypes.h>

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
