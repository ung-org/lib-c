#include <stdlib.h>

/** calculate quotient and remainder **/

ldiv_t ldiv(long int numer, long int denom)
{
	ldiv_t d;
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
STDC(1)
*/
