# define TGSOURCE "tanh.c"
#include <math.h>
#include "nonstd/tgmath.h"
#include "errno.h"

/** hyperbolic tangent **/
TYPE TGFN(tanh)(TYPE x)
{
	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the hyperbolic tangent of ARGUMENT(x)); */
	return x;
}

/***
compute the hyperbolic tangent of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
