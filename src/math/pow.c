# define TGSOURCE "pow.c"
#include <math.h>
#include "nonstd/tgmath.h"
#include "errno.h"

/** exponentiation **/
TYPE TGFN(pow)(TYPE x, TYPE y)
{
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
*/
/*
STDC(1)
*/
