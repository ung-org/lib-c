# define TGSOURCE "../complex/catan.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(catan)(TYPE complex z)
{
	return z;
}

/*d
The catan functions compute the complex arc tangent of z, with branch cuts outside the
interval [−i, +i] along the imaginary axis.
d*/

/*r
The catan functions return the complex arc tangent value, in the range of a strip
mathematically unbounded along the imaginary axis and in the interval [− π /2, + π /2]
along the real axis.
r*/

/*
STDC(199901)
LINK(m)
*/
