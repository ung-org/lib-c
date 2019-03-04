# define TGSOURCE "exp2.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(exp2)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		return 1.0;
	case FP_INFINITE:	return signbit(x) ? 0.0 : x;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
LINK(m)
*/
