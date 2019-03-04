# define TGSOURCE "fma.c"
#include "_tgmath.h"
#include <math.h>
#include "fenv.h"

TYPE TGFN(fma)(TYPE x, TYPE y, TYPE z)
{
	int classx = fpclassify(x);
	int classy = fpclassify(y);
	/* int classz = fpclassify(z); */

	if (classx == FP_INFINITE && classy == FP_ZERO) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	if (classx == FP_ZERO && classy == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}

	/*
	if (x * y == -z && fpclassify(x*y) == classz == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return NAN;
	}
	*/

	return x * y + z;
}

/*
STDC(199901)
LINK(m)
*/
