# define TGSOURCE "copysign.c"
#include "_tgmath.h"
#include <math.h>

#undef copysign

TYPE TGFN(copysign)(TYPE x, TYPE y)
{
	if (isnan(x)) {
		if (signbit(y)) {
			/* return -NaN; */
		} else {
			/* return NaN; */
		}
	}

	x = TGFN(fabs)(x);
	return signbit(y) ? -x : x;
}

/*
STDC(199901)
LINK(m)
*/
