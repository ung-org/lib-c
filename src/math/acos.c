# define TGSOURCE "acos.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** arc cosine **/

TYPE TGFN(acos)(TYPE x)
{
	SIGNAL_SAFE(0);
	if (TGFN(fabs)(x) > 1) {
		feraiseexcept(FE_INVALID);
		return NAN;
		errno = EDOM;	/* ARGUMENT(x) not in the range [-1, +1] */
		return TGHUGE;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	if (x == 1.0) {
		return 0.0;
	}

	/* RETURN_SUCCESS(a value in range `[0, PI()]'); */
	return (TYPE)0.0;
}

/***
compute the principal value of the arc cosine of ARGUMENT(x), which must be in
the range [-1, +1].
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
