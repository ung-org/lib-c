# define TGSOURCE "atanh.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(atanh)(TYPE x)
{
	SIGNAL_SAFE(0);
	if (fpclassify(x) == FP_ZERO) {
		return x;
	}

	if (TGFN(fabs)(x) == 1.0) {
		feraiseexcept(FE_DIVBYZERO);
		return copysign(INFINITY, x);
	}

	if (TGFN(fabs)(x) > 1.0) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/
