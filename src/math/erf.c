# define TGSOURCE "erf.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(erf)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return signbit(x) ? -1.0 : 1.0;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
XOPEN(4)
LINK(m)
*/
