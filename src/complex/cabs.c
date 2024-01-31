# define TGSOURCE "complex/cabs.c"
#include <complex.h>
#include <math.h>
#include "_tgmath.h"

TYPE TGFN(cabs)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return TGFN(hypot)(TGFN(creal)(z), TGFN(cimag)(z));
}

/*d
The cabs functions compute the complex absolute value (also called norm, modulus, or
magnitude) of z.
d*/

/*r
The cabs functions return the complex absolute value.
r*/

/*
STDC(199901)
LINK(m)
*/
