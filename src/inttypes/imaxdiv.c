#include "stddef.h"
#include <inttypes.h>

imaxdiv_t imaxdiv(intmax_t numer, intmax_t denom)
{
	imaxdiv_t r = {0};
	if (denom == 0) {
		/* undefined */
		return r;
	}
	r.quot = numer / denom;
	r.rem = numer % denom;
	/* if either cannot be represented, undefined */
	return r;
}


/*
STDC(199901)
*/
