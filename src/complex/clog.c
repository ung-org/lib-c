#if 0

# define TGSOURCE "complex/clog.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(clog)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && signr && classi == FP_ZERO) {
		feraiseexcept(FE_DIVBYZERO);
		return TGCMPLX(-INFINITY, M_PI);
	}

	if (classr == FP_ZERO && !signr && classi == FP_ZERO) {
		feraiseexcept(FE_DIVBYZERO);
		return TGCMPLX(-INFINITY, 0.0);
	}

	if (classr != FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, M_PI_2);
	}

	if (classr != FP_INFINITE && classi == FP_NAN) {
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

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The clog functions compute the complex natural (base-e) logarithm of z, with a branch
cut along the negative real axis.
d*/

/*r
The clog functions return the complex natural logarithm value, in the range of a strip
mathematically unbounded along the real axis and in the interval [−i π , +i π ] along the
imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/



#endif
