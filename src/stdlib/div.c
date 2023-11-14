#if 0

#include <stdlib.h>

/** calculate quotient and remainder **/

div_t div(int numer, int denom)
{
	div_t d;
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
RETURN_SUCCESS(a TYPEDEF(div_t) containing both the quotient and remainder)
STDC(1)
*/


#endif
