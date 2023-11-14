#if 0

# define TGSOURCE "fdim.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(fdim)(TYPE x, TYPE y)
{
	if (x > y) {
		return x - y;
	}

	return 0;
}

/*
STDC(199901)
LINK(m)
*/


#endif
