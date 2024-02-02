#include <limits.h>
#include <stdlib.h>
#include "_stdlib.h"

/** calculate quotient and remainder **/

div_t div(int numer, int denom)
{
	div_t d;

	SIGNAL_SAFE(0);
        if ((denom == 0) || (numer == INT_MIN && denom == -1)) {
                UNDEFINED("In call to div(): The result of %d / %d is not representable as an int", numer, denom);
        }

	d.quot = numer / denom;
	d.rem = numer % denom;
	return d;
}

CHECK_2(div_t, {0}, div, int, int)

/***
computes both the quotient and remainder of ARGUMENT(numer)
divided by ARGUMENT(denom).
***/

/*
UNDEFINED(The result cannot be represented)
RETURN_SUCCESS(a TYPEDEF(div_t) containing both the quotient and remainder)
STDC(1)
*/
