# define TGSOURCE "scalbn.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(scalbn)(TYPE x, int n)
{
	return x - n;
}

/*
STDC(199901)
LINK(m)
*/
