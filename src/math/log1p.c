#if 0

# define TGSOURCE "log1p.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(log1p)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	if (!signbit(x)) { return x; } break;
	default:		break;
	}

	if (x == -1) {
		feraiseexcept(FE_DIVBYZERO);
		return - INFINITY;
	}

	if (x < -1) {
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


#endif
