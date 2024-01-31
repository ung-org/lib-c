# define TGSOURCE "round.c"
#include "_tgmath.h"
#include <math.h>
#include <fenv.h>

#ifndef __GNUC__
#pragma STDC FENV_ACCESS ON
#endif

TYPE TGFN(round)(TYPE x)
{
	SIGNAL_SAFE(0);
	switch (fpclassify(x)) {
	case FP_ZERO:		return x;
	case FP_INFINITE:	return x;
	default:		break;
	}

	fenv_t save_env;
	feholdexcept(&save_env);

	TYPE ret = TGFN(rint)(x);

	if (fetestexcept(FE_INEXACT)) {
		fesetround(FE_TOWARDZERO);
		ret = TGFN(rint)(TGFN(copysign)(0.5 + TGFN(fabs)(x), x));
	}

	feupdateenv(&save_env);

	return ret;
}

/*
STDC(199901)
LINK(m)
*/
