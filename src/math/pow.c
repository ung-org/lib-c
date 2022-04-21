# define TGSOURCE "pow.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** exponentiation **/

TYPE TGFN(pow)(TYPE x, TYPE y)
{
	int classx = fpclassify(x);
	int classy = fpclassify(y);

	if (classx == FP_ZERO) {
		if (classy == FP_INFINITE && signbit(y)) {
			feraiseexcept(FE_DIVBYZERO);
			return INFINITY;
		}

		if (y < 0) {
			feraiseexcept(FE_DIVBYZERO);
			/* if (y == odd integer) { */
				return signbit(x) ? - INFINITY : INFINITY;
			/* } else { */
				return INFINITY;
			/* } */
		}

		if (y > 0) {
			/* if (y == odd integer) { */
				return x;
			/* } else { */
				return 0.0;
			/* } */
		}
	}

	if (x == -1.0 && classy == FP_INFINITE) {
		return 1;
	}

	if (x == 1.0) {
		return 1.0;
	}

	if (classy == FP_ZERO) {
		return 1.0;
	}

	if (x < 0 /* && y != integer */) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	if (classy == FP_INFINITE) {
		int sb = signbit(y);
		TYPE ab = TGFN(fabs)(x);
		if ((sb && ab < 1.0) || (!sb && ab > 1.0)) {
			return INFINITY;
		} else {
			return 0.0;
		}
	}

	if (classx == FP_INFINITE) {
		if (!signbit(x)) {
			if (y < 0) {
				return 0.0;
			} else if (y > 0) {
				return INFINITY;
			}
		}

		if (y < 0) {
			/* if (y == odd integer ) { */
				return -0.0;
			/* } else { */
				return 0.0;
			/* } */
		}

		if (y > 0) {
			/* if (y == odd integer ) { */
				return - INFINITY;
			/* } else { */
				return INFINITY;
			/* } */
		}
	}

	if (x < 0 /* && !isintegral(y) */) {
		errno = EDOM; /* ARGUMENT(x) is negative and ARGUMENT(y) is not an integer */
		return TGHUGE;
	}

	if (x == 0 && y <= 0) {
		errno = EDOM; /* ARGUMENT(x) is LITERAL(0) and ARGUMENT(y) is less than or equal to LITERAL(0) */
		return TGHUGE;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(POW(ARGUMENT(x), ARGUMENT(y))); */
	return x * y;
}

/***
compute ARGUMENT(x) raised to the power ARGUMENT(y).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
