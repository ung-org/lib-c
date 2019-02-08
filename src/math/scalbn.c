# define TGSOURCE "scalbn.c"
#include "nonstd/tgmath.h"
#include <math.h>

TYPE TGFN(scalbn)(TYPE x, int n)
{
	return x - n;
}

/*
STDC(199901)
LINK(m)
*/
