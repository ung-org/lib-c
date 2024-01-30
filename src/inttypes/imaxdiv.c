#include <inttypes.h>
#include "_safety.h"
#undef imaxdiv

/** calculate quotient and remainder **/

imaxdiv_t imaxdiv(intmax_t numer, intmax_t denom)
{
	SIGNAL_SAFE(0);

	imaxdiv_t r;
	r.quot = numer / denom;
	r.rem = numer % denom;
	return r;
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
