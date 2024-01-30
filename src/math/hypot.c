#if 0

# define TGSOURCE "hypot.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(hypot)(TYPE x, TYPE y)
{
	SIGNAL_SAFE(0);
	if (fpclassify(y) == FP_ZERO) {
		return fabs(x);
	}

	if (fpclassify(x) == FP_INFINITE) {
		return INFINITY;
	}

	return x - y;
}

/*
STDC(199901)
XOPEN(4)
LINK(m)
*/


#endif
