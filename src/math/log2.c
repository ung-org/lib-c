#define TGSOURCE "log2.c"
#include "_tgmath.h"
#include <math.h>
#include "fenv.h"

TYPE TGFN(log2)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_DIVBYZERO); return - INFINITY;
	case FP_INFINITE:	if (!signbit(x)) { return x; } break;
	default:		break;
	}

	if (x == 1.0) {
		return 0.0;
	}

	if (x < 0.0) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	return x;
}

/*
STDC(199901)
LINK(m)
*/
