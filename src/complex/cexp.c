# define TGSOURCE "complex/cexp.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(cexp)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	//int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(1.0, 0.0);
	}

	if (classr != FP_INFINITE && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr != FP_INFINITE && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && classi == FP_ZERO) {
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr == FP_INFINITE && signr && classi != FP_INFINITE) {
		TYPE y = TGFN(cimag)(z);
		/* FIXME */
		return TGCMPLX(0 * TGFN(cos)(y), TGFN(sin)(y));
	}

	if (classr == FP_INFINITE && !signr && classi != FP_INFINITE && classi != FP_ZERO) {
		TYPE y = TGFN(cimag)(z);
		/* FIXME */
		return TGCMPLX(INFINITY * TGFN(cos)(y), TGFN(sin)(y));
	}

	if (classr == FP_INFINITE && signr && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, INFINITY);
	}

	if (classr == FP_INFINITE && !signr && classi == FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_INFINITE && signr && classi == FP_NAN) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classr == FP_INFINITE && !signr && classi == FP_NAN) {
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
The cexp functions compute the complex base-e exponential of z.
d*/

/*r
The cexp functions compute the complex base-e exponential of z.
r*/

/*
STDC(199901)
LINK(m)
*/
