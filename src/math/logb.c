# define TGSOURCE "logb.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(logb)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_DIVBYZERO); return - INFINITY;
	case FP_INFINITE:	return x;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/
