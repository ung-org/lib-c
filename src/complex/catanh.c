# define TGSOURCE "complex/catanh.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(catanh)(TYPE complex z)
{
	SIGNAL_SAFE(0);
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(0.0, NAN);
	}

	if (TGFN(creal)(z) == 1.0 && classi == FP_ZERO) {
		feraiseexcept(FE_DIVBYZERO);
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr != FP_INFINITE && !signr && classi == FP_INFINITE) {
		return TGCMPLX(0.0, M_PI_2);
	}

	if (classr != FP_INFINITE && !signr && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && classi != FP_INFINITE && !signi) {
		return TGCMPLX(0.0, M_PI_2);
	}

	if (classr == FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(0.0, M_PI_2);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(0.0, NAN);
	}

	if (classr == FP_NAN && classi != FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_NAN && classi == FP_INFINITE) {
		return TGCMPLX(0.0, M_PI_2);
	}

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The catanh functions compute the complex arc hyperbolic tangent of z, with branch
cuts outside the interval [−1, +1] along the real axis.
d*/

/*r
The catanh functions return the complex arc hyperbolic tangent value, in the range of a
strip mathematically unbounded along the real axis and in the interval [−i π /2, +i π /2]
along the imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/
