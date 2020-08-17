# define TGSOURCE "complex/ctanh.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(ctanh)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	//int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(0.0, NAN);
	}

	if (classr != FP_INFINITE && classr != FP_ZERO && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(0.0, NAN);
	}

	if (classr != FP_INFINITE && classr != FP_ZERO && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && classi != FP_INFINITE && !signi) {
		TYPE y = TGFN(cimag)(z);
		/* FIXME: this is surely a typo in C18 */
		return TGCMPLX(1.0, 0 * TGFN(sin)(2 * y));
	}

	if (classr == FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(1.0, 0.0);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(1.0, 0.0);
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
The ctanh functions compute the complex hyperbolic tangent of z.
d*/

/*r
The ctanh functions return the complex hyperbolic tangent value.
r*/

/*
STDC(199901)
LINK(m)
*/

