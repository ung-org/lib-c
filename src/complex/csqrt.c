#if 0

# define TGSOURCE "complex/csqrt.c"
#include "_tgmath.h"
#include <complex.h>
#include <math.h>
#include <fenv.h>

TYPE complex TGFN(csqrt)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classi == FP_INFINITE) {
		/* for all reals, even NAN */
		return TGCMPLX(INFINITY, INFINITY);
	}

	if (classr != FP_INFINITE && classi == FP_NAN) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(0.0, INFINITY);
	}

	if (classr == FP_INFINITE && !signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr == FP_INFINITE && signr && classi == FP_NAN) {
		return TGCMPLX(NAN, INFINITY);
	}

	if (classr == FP_INFINITE && !signr && classi == FP_NAN) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_NAN && classi != FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The csqrt functions compute the complex square root of z, with a branch cut along the
negative real axis.
d*/

/*r
The csqrt functions return the complex square root value, in the range of the right half-
plane (including the imaginary axis).
r*/

/*
STDC(199901)
LINK(m)
*/



#endif
