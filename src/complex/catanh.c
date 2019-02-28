# define TGSOURCE "../complex/catanh.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(catanh)(TYPE complex z)
{
	return z;
}

/*d
The catanh functions compute the complex arc hyperbolic tangent of z, with branch
cuts outside the interval [−1, +1] along the real axis.
d*/

/*r
The catanh functions return the complex arc hyperbolic tangent value, in the range of a
strip mathematically unbounded along the real axis and in the interval [−i π /2, +i π /2]
along the imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/

