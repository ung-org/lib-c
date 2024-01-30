#if 0

# define TGSOURCE "acosh.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

TYPE TGFN(acosh)(TYPE x)
{
	SIGNAL_SAFE(0);
	if (x == 1.0) {
		return 0.0;
	}

	if (x < 1.0) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	if (fpclassify(x) == FP_INFINITE && !signbit(x)) {
		return x;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/


#endif
