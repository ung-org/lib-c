# define TGSOURCE "rint.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(rint)(TYPE x)
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
XOPEN(400)
LINK(m)
*/
