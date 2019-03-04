# define TGSOURCE "../complex/ccos.c"
#include "_tgmath.h"

#include <complex.h>

TYPE complex TGFN(ccos)(TYPE complex z)
{
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
