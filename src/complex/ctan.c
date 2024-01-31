# define TGSOURCE "complex/ctan.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(ctan)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return TGCMPLX(0.0, -TGFN(ctanh)(I * z));
}

/*d
The ctan functions compute the complex tangent of z.
d*/

/*r
The ctan functions return the complex tangent value.
r*/

/*
STDC(199901)
LINK(m)
*/
