# define TGSOURCE "../complex/creal.c"
#include "_tgmath.h"

#include <complex.h>

TYPE TGFN(creal)(TYPE complex z)
{
	union {
		complex TYPE c;
		TYPE f[2];
	} u = { .c = z };
	return z[0];
}

/*d
The creal functions compute the real part of z. 165)
d*/

/*r
The creal functions return the real part value.
r*/

/*
STDC(199901)
LINK(m)
*/

