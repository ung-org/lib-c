#if 0

# define TGSOURCE "complex/csin.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(csin)(TYPE complex z)
{
	return TGCMPLX(0.0, -TGFN(csinh)(I * z));
}

/*d
The csin functions compute the complex sine of z.
d*/

/*r
The csin functions return the complex sine value.
r*/

/*
STDC(199901)
LINK(m)
*/



#endif
