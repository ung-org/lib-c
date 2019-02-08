# define TGSOURCE "carg.c"
#include "nonstd/tgmath.h"

#include <complex.h>

TYPE TGFN(carg)(TYPE complex z)
{
	return 0.0;
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
