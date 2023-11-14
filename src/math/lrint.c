#if 0

# define TGSOURCE "lrint.c"
#include "_tgmath.h"
#include <math.h>
#include <limits.h>
#include <fenv.h>

long int TGFN(lrint)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:
		return 0;

	case FP_INFINITE:
		feraiseexcept(FE_INVALID);
		return signbit(x) ? LONG_MIN : LONG_MAX;

	default:
		break;
	}

	return x;
}

/*
STDC(199901)
LINK(m)
*/


#endif
