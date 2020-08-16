# define TGSOURCE "complex/casinh.c"
#include "_tgmath.h"
#include <complex.h>
#include "math.h"
#include "fenv.h"

TYPE complex TGFN(casinh)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(0.0, 0.0);
	}

	if (classr != FP_INFINITE && !signr && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr != FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && classi != FP_INFINITE && !signi) {
		return TGCMPLX(INFINITY, 0.0);
	}

	if (classr == FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, M_PI_4);
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

	if (classr == FP_NAN && classi == FP_INFINITE) {
		return TGCMPLX(INFINITY, NAN);
	}

	if (classr == FP_NAN && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The casinh functions compute the complex arc hyperbolic sine of z, with branch cuts
outside the interval [−i, +i] along the imaginary axis.
d*/

/*r
The casinh functions return the complex arc hyperbolic sine value, in the range of a
strip mathematically unbounded along the real axis and in the interval [−i π /2, +i π /2]
along the imaginary axis.
r*/

/*
STDC(199901)
LINK(m)
*/
