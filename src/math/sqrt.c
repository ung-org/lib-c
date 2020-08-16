# define TGSOURCE "sqrt.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** square root **/

TYPE TGFN(sqrt)(TYPE x)
{
	if (x < 0) {
		errno = EDOM; /* ARGUMENT(x) is negative */
		return TGHUGE;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(SQRT(ARGUMENT(x))); */
	return x;
}

/***
compute the principal square root of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
