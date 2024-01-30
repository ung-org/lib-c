#if 0

# define TGSOURCE "complex/ccos.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(ccos)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	return TGFN(ccosh)(I * z);
}

/*d
The ccos functions compute the complex cosine of z.
d*/

/*r
The ccos functions return the complex cosine value.
r*/

/*
STDC(199901)
LINK(m)
*/


#endif
