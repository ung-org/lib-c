# define TGSOURCE "log10.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** base-10 logarithm **/

TYPE TGFN(log10)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_INVALID); return - INFINITY;
	case FP_INFINITE:	if (!signbit(x)) { return x; } break;
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

	/* RETURN_SUCCESS(the base-10 logarithm of ARGUMENT(x)); */
	return x;
}

/***
compute the base-ten logarithm of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
