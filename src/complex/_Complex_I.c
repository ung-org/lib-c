#include <complex.h>

#define _Complex_I \
	 (((union { _Complex float __c; float __f[2]; }){.__f = {0., 1.} }).__c)


/*
STDC(199901)
*/
