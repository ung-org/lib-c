# define TGSOURCE "copysign.c"
#include <math.h>
#include "_tgmath.h"
#undef copysign

TYPE TGFN(copysign)(TYPE x, TYPE y)
{
	SIGNAL_SAFE(0);
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
