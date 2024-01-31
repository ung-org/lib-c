# define TGSOURCE "remquo.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(remquo)(TYPE x, TYPE y, int *quo)
{
	SIGNAL_SAFE(0);
	(void)quo;
	return x - y;
}

/*
STDC(199901)
LINK(m)
*/
