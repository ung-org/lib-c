#include <stdlib.h>

lldiv_t lldiv(long long int numer, long long int denom)
{
	lldiv_t d;
	d.quot = numer / denom;
	d.rem = numer % denom;
	return d;
}

/*
STDC(199901)
*/
