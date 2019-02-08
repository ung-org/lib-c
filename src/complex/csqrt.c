# define TGSOURCE "csqrt.c"
#include "nonstd/tgmath.h"

#include <complex.h>

TYPE complex TGFN(csqrt)(TYPE complex z)
{
	return 0.0;
}

/*d
The csqrt functions compute the complex square root of z, with a branch cut along the
negative real axis.
d*/

/*r
The csqrt functions return the complex square root value, in the range of the right half-
plane (including the imaginary axis).
r*/

/*
STDC(199901)
LINK(m)
*/

