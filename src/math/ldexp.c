# define TGSOURCE "ldexp.c"
#include <math.h>
#include "nonstd/tgmath.h"
#include "errno.h"

/** multiply by a power of 2 **/
TYPE TGFN(ldexp)(TYPE x, int exp)
{
	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(ARGUMENT(x) * POW(2,ARGUMENT(exp))); */
	return x * TGFN(pow)(2, exp);
}

/***
multiply the floating-point number specifed by ARGUMENT(x)
by 2 raised to the power ARGUMENT(exp).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
