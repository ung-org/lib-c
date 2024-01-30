#if 0

# define TGSOURCE "nearbyint.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(nearbyint)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
LINK(m)
*/


#endif
