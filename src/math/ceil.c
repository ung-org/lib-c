#if 0

# define TGSOURCE "ceil.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** round up to nearest integer **/

TYPE TGFN(ceil)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(CEIL(ARGUMENT(x))); */
	return x;
}

/***
compute the smallest integral value that is not less
than ARGUMENT(x), returning it as the same floating-point type as ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/


#endif
