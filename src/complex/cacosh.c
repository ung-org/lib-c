# define TGSOURCE "complex/cacosh.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(cacosh)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, M_PI_2);
	}

	if (classr != FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, M_PI_2);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(NAN, M_PI_2);
	}

	if (classr != FP_INFINITE && classr != FP_ZERO && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(INFINITY, M_PI);
	}

	if (classr == FP_INFINITE && !signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr == FP_INFINITE && signr && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, 3 * M_PI_4);
	}

	if (classr == FP_INFINITE && !signr && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, M_PI_4);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_NAN && classi != FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_NAN && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, NAN);
	}

	return z;
}


/*d
The cacosh functions compute the complex arc hyperbolic cosine of z, with a branch
cut at values less than 1 along the real axis.
d*/

/*r
The cacosh functions return the complex arc hyperbolic cosine value, in the range of a
half-strip of non-negative values along the real axis and in the interval [−i π , +i π ] along
the imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/
