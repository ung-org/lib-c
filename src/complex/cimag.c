# define TGSOURCE "../complex/cimag.c"
#include "_tgmath.h"

#include <complex.h>

TYPE TGFN(cimag)(TYPE complex z)
{
	union {
		complex TYPE c;
		TYPE f[2];
	} u = { .c = z };
	return u.f[1];
}

/*d
The cimag functions compute the imaginary part of z. 164)
d*/

/*r
The cimag functions return the imaginary part value (as a real).
r*/

/*
STDC(199901)
LINK(m)
*/

