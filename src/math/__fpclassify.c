# define TGSOURCE "__fpclassify.c"
#include <math.h>
#include "_tgmath.h"

#if ! defined __STDC_VERSION__ || __STDC_VERSION__ < 199901L
#include "FP_INFINITE.c"
#include "FP_NAN.c"
#include "FP_NORMAL.c"
#include "FP_SUBNORMAL.c"
#include "FP_ZERO.c"

int TGFN(__fpclassify)(TYPE x)
{
	(void)x;
	return FP_NORMAL;
}

/*
LINK(m)
*/
