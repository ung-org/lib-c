# define TGSOURCE "fmod.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** floating-point remainder **/

TYPE TGFN(fmod)(TYPE x, TYPE y)
{
	int classx = fpclassify(x);
	int classy = fpclassify(y);

	if (classx == FP_ZERO && classy != FP_ZERO) {
		return x;
	}

	if (classx == FP_INFINITE && classy == FP_ZERO) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	if (classx != FP_INFINITE && classy == FP_INFINITE) {
		return x;
	}

	if (y == 0) {
		return 0;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(ARGUMENT(x) - VAR(i) * ARGUMENT(y)); */
	return x - x / y;
}

/***
compute the floating-point remainder of ARGUMENT(x)/ARGUMENT(y).
FIXME: I am not sure I understand this.
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
IMPLEMENTATION(Whether ARGUMENT(y) being LITERAL(0) results in a domain error or THIS() returning LITERAL(0))
LINK(m)
STDC(1)
*/
