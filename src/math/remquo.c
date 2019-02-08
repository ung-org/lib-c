# define TGSOURCE "remquo.c"
#include "nonstd/tgmath.h"
#include <math.h>

TYPE TGFN(remquo)(TYPE x, TYPE y, int *quo)
{
	return x - y;
}

/*
STDC(199901)
LINK(m)
*/
