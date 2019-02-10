# define TGSOURCE "tan.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"

/** tangent **/
TYPE TGFN(tan)(TYPE x)
{
	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the tangent of ARGUMENT(x)); */
	return TGFN(sin)(x) / TGFN(cos)(x);
}

/***
compute the tanget of ARGUMENT(x), in radians.
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
