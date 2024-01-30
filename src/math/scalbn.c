#if 0

# define TGSOURCE "scalbn.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(scalbn)(TYPE x, int n)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	default:		break;
	}

	if (n == 0) {
		return x;
	}

	return TGFN(ldexp)(x, n);
}

/*
STDC(199901)
LINK(m)
*/


#endif
