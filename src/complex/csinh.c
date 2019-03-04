# define TGSOURCE "../complex/csinh.c"
#include "_tgmath.h"
#include <complex.h>
#include "math.h"
#include "fenv.h"

TYPE complex TGFN(csinh)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(0.0, NAN);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(0.0, NAN);
	}

	if (classr != FP_INFINITE && !signr && classi == FP_INFINITE) {
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

	if (classr == FP_INFINITE && classi != FP_INFINITE && !signi) {
		TYPE y = TGFN(cimag)(z);
		return TGCMPLX(INFINITY * TGFN(cos)(y), TGFN(sin)(y));
	}

	if (classr == FP_INFINITE && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(INFINITY, INFINITY);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_NAN && classi == FP_ZERO) {
		return TGCMPLX(NAN, 0.0);
	}

	if (classr == FP_NAN && classi != FP_ZERO) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The csinh functions compute the complex hyperbolic sine of z.
d*/

/*r
The csinh functions return the complex hyperbolic sine value.
r*/

/*
STDC(199901)
LINK(m)
*/

