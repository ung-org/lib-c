#include <limits.h>
#include <stdlib.h>
#include "_stdlib.h"

/** calculate quotient and remainder **/

lldiv_t lldiv(long long int numer, long long int denom)
{
	SIGNAL_SAFE(0);
	if ((denom == 0) || (numer == LLONG_MIN && denom == -1)) {
		UNDEFINED("In call to lldiv(): The result of %lld / %lld is not representable as a long long int", numer, denom);
	}

	lldiv_t d;
	d.quot = numer / denom;
	d.rem = numer % denom;
	return d;
}

CHECK_2(lldiv_t, {0}, lldiv, long long int, long long int)

/***
computes both the quotient and remainder of ARGUMENT(numer)
divided by ARGUMENT(denom).
***/

/*
UNDEFINED(The result cannot be represented)
RETURN_SUCCESS(a TYPEDEF(ldiv_t) containing both the quotient and remainder)
STDC(199901)
*/
