# define TGSOURCE "nextafter.c"
#include "nonstd/tgmath.h"
#include <math.h>

TYPE TGFN(nextafter)(TYPE x, TYPE y)
{
	return x - y;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/
