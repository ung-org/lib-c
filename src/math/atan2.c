# define TGSOURCE "atan2.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"
#include "_assert.h"

#include "M_PI.c"
#include "M_PI_2.c"

#ifndef copysign
#define copysign(_x, _y) _x
#endif

/** arc tangent **/
TYPE TGFN(atan2)(TYPE y, TYPE x)
{
	int classy = fpclassify(y);
	int classx = fpclassify(x);
	ASSERT_NONZERO(x);

	if (classy == FP_ZERO && classx == 0) {
		if (signbit(x)) {
			return copysign(M_PI, y);
		} else {
			return y;
		}
	}

	if (classy == FP_ZERO) {
		if (x < 0) {
			return copysign(M_PI, y);
		} else if (x > 0) {
			return y;
		}
	}

	if (classx == FP_ZERO) {
		if (y < 0) {
			return - M_PI_2;
		} else if (y > 0) {
			return M_PI_2;
		}
	}

	if (classx == FP_INFINITE) {
		if (classy == FP_INFINITE) {
			if (signbit(x)) {
				return copysign(3.0 * M_PI / 4.0, y);
			} else {
				return copysign(M_PI / 4.0, y);
			}
		} else if (y > 0) {
			if (signbit(x)) {
				return copysign(M_PI, y);
			} else {
				return copysign(0.0, y);
			}
		}
	}

	if (classy == FP_INFINITE && classx != FP_INFINITE) {
		return copysign(M_PI_2, y);
	}

	if (y == 0 && x == 0) {
		errno = EDOM; /* ARGUMENT(y) and ARGUMENT(x) are both LITERAL(0)) */
		return TGHUGE;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	TYPE ret = TGFN(tan)(y / x);
	/* FIXME: quadrant */
	/* RETURN_SUCCESS(a value in range `[-PI(), +PI()]'); */
	return ret;
}

/***
functions compute the principal value of the arc tangent of
ARGUMENT(y)/ARGUMENT(x), using the signs of both to place the return value in
the correct quadrant.
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
