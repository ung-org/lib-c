#if 0

# define TGSOURCE "complex/carg.c"
#include <complex.h>
#include <math.h>
#include "_tgmath.h"

TYPE TGFN(carg)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return TGFN(atan2)(TGFN(cimag)(z), TGFN(creal)(z));
}

/*d
The carg functions compute the argument (also called phase angle) of z, with a branch
cut along the negative real axis.
d*/

/*r
The carg functions return the value of the argument in the interval [− π , + π ].
r*/

/*
STDC(199901)
LINK(m)
*/


#endif
