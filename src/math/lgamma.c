# define TGSOURCE "lgamma.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(lgamma)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_DIVBYZERO); return INFINITY;
	case FP_INFINITE:	return INFINITY;
	default:		break;
	}

	if (x == 1.0 || x == 2.0) {
		return 0.0;
	}

	if (signbit(x)) {
		feraiseexcept(FE_DIVBYZERO);
		return INFINITY;
	}

	return x;
}

/*
STDC(199901)
XOPEN(4)
LINK(m)
*/
