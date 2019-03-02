#include <stdlib.h>
#include "ctype.h"
#include "limits.h"
#include "errno.h"

unsigned long long int strtoull(const char * restrict nptr, char ** restrict endptr, int base)
{
	unsigned long long int ret = 0;
	unsigned long long int max = ULLONG_MAX;
	unsigned long long int min = 0;

	#include "_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/
