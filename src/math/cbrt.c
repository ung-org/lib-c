# define TGSOURCE "cbrt.c"
#include "_tgmath.h"
#include <math.h>

TYPE TGFN(cbrt)(TYPE x)
{
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	}

	return x;
}

/*
STDC(199901)
XOPEN(400)
LINK(m)
*/
