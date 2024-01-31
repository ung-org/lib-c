# define TGSOURCE "fmin.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(fmin)(TYPE x, TYPE y)
{
	SIGNAL_SAFE(0);
	if (isnan(x) && !isnan(y)) {
		return y;
	} else if (!isnan(x) && isnan(y)) {
		return x;
	}

	return x < y ? x : y;
}

/*
STDC(199901)
LINK(m)
*/
