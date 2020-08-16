# define TGSOURCE "sin.c"
#include <errno.h>
#include <fenv.h>
#include <math.h>
#include "_tgmath.h"

/** sine **/

TYPE TGFN(sin)(TYPE x)
{
	int MAXLOOPS = 10;
	int factorial = 1;
	int i;
	TYPE sine = 0.0;
	TYPE power = 1.0;

	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	feraiseexcept(FE_INVALID); return NAN;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* TODO: make sure x is in the input domain */
	/* TODO: tweak the max number of loops */

	/* RETURN_SUCCESS(the sine of ARGUMENT(x)); */

	/* sin x = x - x^3/3! + x^5/5! - x^7/7! ... */
	for (i = 1; i < MAXLOOPS; i++) {
		power = power * x;
		factorial = factorial * i;

		if (i % 4 == 1) {
			sine += power / factorial;
		} else if (i % 4 == 3) {
			sine -= power / factorial;
		}
	}

	return sine;
}

/***
compute sine of ARGUMENT(x), in radians.
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
