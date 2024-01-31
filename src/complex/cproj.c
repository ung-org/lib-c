# define TGSOURCE "complex/cproj.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(cproj)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return z;
}

/*d
The cproj functions compute a projection of z onto the Riemann sphere: z projects to
z except that all complex infinities (even those with one infinite part and one NaN part)
project to positive infinity on the real axis. If z has an infinite part, then cproj(z) is
equivalent to
INFINITY + I * copysign(0.0, cimag(z))
d*/

/*r
The cproj functions return the value of the projection onto the Riemann sphere.
r*/

/*
STDC(199901)
LINK(m)
*/
