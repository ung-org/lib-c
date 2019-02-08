# define TGSOURCE "cacos.c"
#include "nonstd/tgmath.h"

#include <complex.h>

TYPE complex TGFN(cacos)(TYPE complex z)
{
	return I;
}

/*d
The cacos functions compute the complex arc cosine of z, with branch cuts outside the
interval [−1, +1] along the real axis.
d*/

/*r
The cacos functions return the complex arc cosine value, in the range of a strip
mathematically unbounded along the imaginary axis and in the interval [0, π ] along the
real axis
r*/

/*
STDC(199901)
LINK(m)
*/
