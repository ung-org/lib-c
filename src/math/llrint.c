#if 0

# define TGSOURCE "llrint.c"
#include "_tgmath.h"
#include <math.h>
#include <limits.h>
#include <fenv.h>

long long int TGFN(llrint)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:
		return 0;

	case FP_INFINITE:
		feraiseexcept(FE_INVALID);
		return signbit(x) ? LLONG_MIN : LLONG_MAX;

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
