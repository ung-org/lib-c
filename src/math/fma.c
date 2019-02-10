# define TGSOURCE "fma.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(fma)(TYPE x, TYPE y, TYPE z)
{
	return x - y - z;
}

/*
STDC(199901)
LINK(m)
*/
