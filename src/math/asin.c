# define TGSOURCE "asin.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"

/** arc sine **/
TYPE TGFN(asin)(TYPE x)
{
	if (x < -1.0 || x > 1.0) {
		errno = EDOM;	/* ARGUMENT(x) is not in the range [-1, +1] */
		return TGHUGE;
	}

	if (0) {
		errno = ERANGE;	/* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(a value in range `[-PI()/2, +PI()/2]'); */
	return (TYPE)0.0;
}

/***
compute the principal value of the arc sine of ARGUMENT(x), which must be in
the range [-1, +1].
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
*/
/*
STDC(1)
*/
