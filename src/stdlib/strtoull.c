#include <stdlib.h>

unsigned long long int strtoull(const char * restrict nptr, char ** restrict endptr, int base)
{
	uintmax_t ret = strtoumax(nptr, endptr, base);
	if (ret > ULLONG_MAX) {
	}
	return (unsigned long long int)ret;
}

/*
STDC(199901)
*/
