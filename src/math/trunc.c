# define TGSOURCE "trunc.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(trunc)(TYPE x)
{
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
