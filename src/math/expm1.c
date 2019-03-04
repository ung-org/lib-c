# define TGSOURCE "expm1.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(expm1)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return signbit(x) ? -1.0 : x;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/
