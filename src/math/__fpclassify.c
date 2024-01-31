# define TGSOURCE "__fpclassify.c"
#include <math.h>
#include "_tgmath.h"

int TGFN(__fpclassify)(TYPE x)
{
	SIGNAL_SAFE(0);
	(void)x;
	return FP_NORMAL;
}

/*
STDC(0)
LINK(m)
*/
