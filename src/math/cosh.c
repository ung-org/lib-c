#if 0

# define TGSOURCE "cosh.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** hyperbolic cosine **/

TYPE TGFN(cosh)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return 1.0;
	case FP_INFINITE:	return TGFN(fabs)(x);
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The magnitude of ARGUMENT(x) is too large */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the hyperbolic cosine of ARGUMENT(x)); */
	return x;
}

/***
compute the hyperbolic cosine of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/


#endif
