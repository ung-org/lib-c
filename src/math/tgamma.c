# define TGSOURCE "tgamma.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(tgamma)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:
		feraiseexcept(FE_DIVBYZERO);
		return signbit(x) ? - INFINITY : INFINITY;

	case FP_INFINITE:
		if (signbit(x)) {
			feraiseexcept(FE_INVALID);
			return NAN;
		} else {
			return INFINITY;
		}

	default:
		break;
	}

	return x;
}

/*
STDC(199901)
LINK(m)
*/
