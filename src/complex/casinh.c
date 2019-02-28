# define TGSOURCE "../complex/casinh.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(casinh)(TYPE complex z)
{
	return z;
}

/*d
The casinh functions compute the complex arc hyperbolic sine of z, with branch cuts
outside the interval [−i, +i] along the imaginary axis.
d*/

/*r
The casinh functions return the complex arc hyperbolic sine value, in the range of a
strip mathematically unbounded along the real axis and in the interval [−i π /2, +i π /2]
along the imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/
