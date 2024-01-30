#if 0

# define TGSOURCE "cos.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** cosine **/

TYPE TGFN(cos)(TYPE x)
{
	SIGNAL_SAFE(0);
	int MAXLOOPS = 10;
	int factorial = 1;
	int i;
	TYPE cosine = 1.0;
	TYPE power = 1.0;

	switch (fpclassify(x)) {
	case FP_ZERO:		return 1.0;
	case FP_INFINITE:	feraiseexcept(FE_INVALID); return NAN;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* TODO: make sure x is in the right domain */
	/* TODO: tweak number of loops */

	/* cos x = 1 - x^2/2! + x^4/4! -x^6/6! ... */
	for (i = 1; i < MAXLOOPS; i++) {
		power = power * x;
		factorial = factorial * i;

		if (i % 4 == 0) {
			cosine += power / factorial;
		} else if (i % 4 == 2) {
			cosine -= power / factorial;
		}
	}

	/* RETURN_SUCCESS(the cosine of ARGUMENT(x)); */
	return cosine;
}

/***
compute cosine of ARGUMENT(x), in radians.
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/



#endif
