# define TGSOURCE "atan.c"
#include <errno.h>
#include <math.h>
#include "_tgmath.h"

/** arc tangent **/

TYPE TGFN(atan)(TYPE x)
{
	int MAXLOOPS = 10;
	TYPE arctan = 0.0;
	TYPE power = 1.0;
	int i;

	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return signbit(x) ? - M_PI_2 : M_PI_2;
	default:		break;
	}

	if (0) {
		errno = ERANGE; /* The result cannot be represented */
		/* RETURN_FAILURE(CONSTANT(HUGE_VAL), A range error occurred); */
		return TGHUGE;
	}

	/* TODO: correct input domain */
	/* TODO: tweak number of loops */

	/* arctan x = x - x^3/3 + x^5/5 - x^7/7 ... */
	for (i = 1; i < MAXLOOPS; i++) {
		power *= x;

		if (i % 4 == 1) {
			arctan += power / i;
		} else if (i % 4 == 3) {
			arctan -= power / i;
		}
	}

	/* RETURN_SUCCESS(a value in the range `[-PI()/2, +PI()/2]'); */
	return arctan;
}

/***
compute the principal value of the arc tangent of ARGUMENT(x).
***/

/*
IMPLEMENTATION(The value returned on a domain error, CONSTANT(HUGE_VAL))
LINK(m)
STDC(1)
*/
