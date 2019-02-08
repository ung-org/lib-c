#include <stdlib.h>

long long int strtoll(const char * restrict nptr, char ** restrict endptr, int base)
{
	intmax_t ret = strtoimax(nptr, endptr, base);
	if (ret < LLONG_MIN) {
	}
	if (ret > LLONG_MAX) {
	}
	return (long long int)ret;
}

/*
STDC(199901)
*/
