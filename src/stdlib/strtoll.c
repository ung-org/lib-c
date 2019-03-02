#include <stdlib.h>
#include "ctype.h"
#include "limits.h"
#include "errno.h"

long long int strtoll(const char * restrict nptr, char ** restrict endptr, int base)
{
	long long int ret = 0;
	long long int max = LLONG_MAX;
	long long int min = LLONG_MIN;

	#include "_strtoi.h"

	return ret;
}

/*
STDC(199901)
*/
