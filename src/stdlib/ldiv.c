#include <limits.h>
#include <stdlib.h>
#include "_stdlib.h"

/** calculate quotient and remainder **/

ldiv_t ldiv(long int numer, long int denom)
{
	ldiv_t d;

	SIGNAL_SAFE(0);
	if ((denom == 0) || (numer == LONG_MIN && denom == -1)) {
		UNDEFINED("In call to ldiv(): The result of %ld / %ld is not representable as a long int", numer, denom);
	}

	d.quot = numer / denom;
	d.rem = numer % denom;
	return d;
}

CHECK_2(ldiv_t, {0}, ldiv, long int, long int)

/***
computes both the quotient and remainder of ARGUMENT(numer)
divided by ARGUMENT(denom).
***/

/*
UNDEFINED(The result cannot be represented)
RETURN_SUCCESS(a TYPEDEF(ldiv_t) containing both the quotient and remainder)
STDC(1)
*/
