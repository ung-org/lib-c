# define TGSOURCE "floor.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** round down to nearest integer **/

TYPE TGFN(floor)(TYPE x)
{
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

	/* RETURN_SUCCESS(FLOOR(ARGUMENT(x))); */
	return x;
}

/***
compute the largest integral value that is not greater
than ARGUMENT(x), returning it as the same floating-point type as ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
