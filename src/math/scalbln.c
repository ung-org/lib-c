# define TGSOURCE "scalbln.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(scalbln)(TYPE x, long int n)
{
	return x - n;
}

/* c99
Description
2
The scalbn and scalbln functions compute x × FLT_RADIX n efficiently, not
normally by computing FLT_RADIX n explicitly. A range error may occur.
Returns
3
The scalbn and scalbln functions return x × FLT_RADIX n .
*/

/*
STDC(199901)
LINK(m)
*/
