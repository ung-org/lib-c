#if 0

# define TGSOURCE "__fpclassify.c"
#include <math.h>
#include "_tgmath.h"

int TGFN(__fpclassify)(TYPE x)
{
	(void)x;
	return FP_NORMAL;
}

/*
LINK(m)
*/


#endif
