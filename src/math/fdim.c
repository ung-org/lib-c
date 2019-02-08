# define TGSOURCE "fdim.c"
#include "nonstd/tgmath.h"
#include <math.h>

TYPE TGFN(fdim)(TYPE x, TYPE y)
{
	return x - y;
}

/*
STDC(199901)
LINK(m)
*/
