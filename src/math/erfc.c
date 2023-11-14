#if 0

# define TGSOURCE "erfc.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(erfc)(TYPE x)
{
	if (fpclassify(x) == FP_INFINITE) {
		return signbit(x) ? 2.0 : 0.0;
	}

	return x;
}

/*
STDC(199901)
XOPEN(4)
LINK(m)
*/


#endif
