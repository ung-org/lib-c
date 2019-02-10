# define TGSOURCE "log.c"
#include <math.h>
#include "_tgmath.h"
#include "errno.h"

/** natural logarithm **/
TYPE TGFN(log)(TYPE x)
{
	if (x < 0) {
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
