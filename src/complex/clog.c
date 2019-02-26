# define TGSOURCE "../complex/clog.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(clog)(TYPE complex z)
{
	return 0.0;
}

/*d
The clog functions compute the complex natural (base-e) logarithm of z, with a branch
cut along the negative real axis.
d*/

/*r
The clog functions return the complex natural logarithm value, in the range of a strip
mathematically unbounded along the real axis and in the interval [−i π , +i π ] along the
imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/

