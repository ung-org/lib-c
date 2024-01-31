# define TGSOURCE "asinh.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(asinh)(TYPE x)
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
XOPEN(400)
LINK(m)
*/
