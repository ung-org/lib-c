# define TGSOURCE "atan2.c"
#include <math.h>
#include "nonstd/tgmath.h"
#include "errno.h"
#include "nonstd/assert.h"

/** arc tangent **/
TYPE TGFN(atan2)(TYPE y, TYPE x)
{
	ASSERT_NONZERO(x);

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
