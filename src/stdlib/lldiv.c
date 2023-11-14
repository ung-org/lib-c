#if 0

#include <stdlib.h>

/** calculate quotient and remainder **/

lldiv_t lldiv(long long int numer, long long int denom)
{
	lldiv_t d;
	d.quot = numer / denom;
	d.rem = numer % denom;
	return d;
}

/***
computes both the quotient and remainder of ARGUMENT(numer)
divided by ARGUMENT(denom).
***/

/*
UNDEFINED(The result cannot be represented)
RETURN_SUCCESS(a TYPEDEF(ldiv_t) containing both the quotient and remainder)
STDC(199901)
*/


#endif
