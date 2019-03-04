# define TGSOURCE "fabs.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"

/** absolute value **/
TYPE TGFN(fabs)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		return 0.0;
	case FP_INFINITE:	return INFINITY;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(ABS(ARGUMENT(x))); */
	return signbit(x) ? -x : x;
}

/***
compute the absolute value of a floating-point number ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
