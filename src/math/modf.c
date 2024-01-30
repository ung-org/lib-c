#if 0

# define TGSOURCE "modf.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** decompose floating-point numbers **/

TYPE TGFN(modf)(TYPE value, TYPE *iptr)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(value)) {
	case FP_INFINITE:	*iptr = value; return copysign(0.0, value);
	case FP_NAN:		*iptr = value; return value;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* RETURN_SUCCESS(the signed fractional part of ARGUMENT(value)); */
	return value;
}

/***
break ARGUMENT(value) into integral and fractional parts.
Each part has the same sign as ARGUMENT(value). The integral part is converted to
the same floating-point type as ARGUMENT(value) and stored in the object pointed to
by ARGUMENT(iptr).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/


#endif
