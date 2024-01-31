# define TGSOURCE "sinh.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** hyperbolic sine **/

TYPE TGFN(sinh)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The magnitude of ARGUMENT(x) is too large */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the hyperbolic sine of ARGUMENT(x)); */
	return x;
}

/***
compute hyperbolic sine of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
