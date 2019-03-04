# define TGSOURCE "log.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"
#include "fenv.h"

/** natural logarithm **/
TYPE TGFN(log)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_DIVBYZERO); return - INFINITY;
	case FP_INFINITE:	if (!signbit(x)) { return x; }
	default:		break;
	}

	if (x == 1.0) {
		return 0.0;
	}

	if (x < 0) {
		feraiseexcept(FE_INVALID);
		return NAN;
		errno = EDOM; /* ARGUMENT(x) is negative */
		return TGHUGE;
	}

	if (x == 0) {
		errno = ERANGE; /* ARGUMENT(x) is LITERAL(0) */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the natural logarithm of ARGUMENT(x)); */
	return x;
}

/***
compute the natural logarithm of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
