#if 0

# define TGSOURCE "complex/conj.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(conj)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return TGFN(creal)(z) - TGFN(cimag)(z);
}

/*d
The conj functions compute the complex conjugate of z, by rev ersing the sign of its
imaginary part.
d*/

/*r
The conj functions return the complex conjugate value.
r*/

/*
STDC(199901)
LINK(m)
*/


#endif
