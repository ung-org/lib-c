#if 0

# define TGSOURCE "complex/ccosh.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(ccosh)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	//int signr = signbit(TGFN(creal)(z));
	//int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(1.0, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(NAN, 0.0);
	}

	if (classr != FP_INFINITE && classr != FP_ZERO && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr != FP_INFINITE && classr != FP_ZERO && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && classi == FP_ZERO) {
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr == FP_INFINITE && classi != FP_INFINITE && classi != FP_ZERO) {
		TYPE y = TGFN(cimag)(z);
		return TGCMPLX(TGFN(cos)(y), TGFN(sin)(y));
	}

	if (classr == FP_INFINITE && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_NAN && classi == FP_ZERO) {
		return TGCMPLX(NAN, 0.0);
	}

	if (classr == FP_NAN && classi != FP_INFINITE && classi != FP_ZERO) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The ccosh functions compute the complex hyperbolic cosine of z.
d*/

/*r
The ccosh functions return the complex hyperbolic cosine value.
r*/

/*
STDC(199901)
LINK(m)
*/



#endif
