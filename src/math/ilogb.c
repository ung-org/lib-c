#if 0

# define TGSOURCE "ilogb.c"
#include "_tgmath.h"
#include <math.h>
#include <limits.h>
#include <fenv.h>

int TGFN(ilogb)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		feraiseexcept(FE_INVALID); return FP_ILOGB0;
	case FP_INFINITE:	feraiseexcept(FE_INVALID); return INT_MAX;
	case FP_NAN:		feraiseexcept(FE_INVALID); return FP_ILOGBNAN;
	default:		break;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/


#endif
