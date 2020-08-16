# define TGSOURCE "complex/cacos.c"
#include "_tgmath.h"
#include <complex.h>
#include "math.h"
#include "fenv.h"

TYPE complex TGFN(cacos)(TYPE complex z)
{
	int classr = fpclassify(TGFN(creal)(z));
	int classi = fpclassify(TGFN(cimag)(z));
	int signr = signbit(TGFN(creal)(z));
	int signi = signbit(TGFN(cimag)(z));

	if (classr == FP_ZERO && classi == FP_ZERO) {
		return TGCMPLX(M_PI_2, 0.0);
	}

	if (classr == FP_ZERO && classi == FP_NAN) {
		return TGCMPLX(M_PI_2, NAN);
	}

	if (classr != FP_INFINITE && classi == FP_INFINITE) {
		return TGCMPLX(M_PI_2, INFINITY);
	}

	if (classr != FP_ZERO && classr != FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(NAN, NAN);
	}

	if (classr == FP_INFINITE && signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(M_PI, -INFINITY);
	}

	if (classr == FP_INFINITE && !signr && classi != FP_INFINITE && !signi) {
		return TGCMPLX(0.0, -INFINITY);
	}

	if (classr == FP_INFINITE && signr && classi == FP_INFINITE) {
		return TGCMPLX(3 * M_PI_4, -INFINITY);
	}

	if (classr == FP_INFINITE && !signr && classi == FP_INFINITE) {
		return TGCMPLX(M_PI_4, -INFINITY);
	}

	if (classr == FP_INFINITE && classi == FP_NAN) {
		return TGCMPLX(NAN, INFINITY);
	}

	if (classr == FP_NAN && classi != FP_INFINITE) {
		feraiseexcept(FE_INVALID);
		return TGCMPLX(NAN, NAN);
	}

	if (classr == NAN && classi == FP_INFINITE) {
		return TGCMPLX(NAN, -INFINITY);
	}

	if (classr == NAN && classi == NAN) {
		return TGCMPLX(NAN, NAN);
	}

	return z;
}

/*d
The cacos functions compute the complex arc cosine of z, with branch cuts outside the
interval [−1, +1] along the real axis.
d*/

/*r
The cacos functions return the complex arc cosine value, in the range of a strip
mathematically unbounded along the imaginary axis and in the interval [0, π ] along the
real axis
r*/

/*
STDC(199901)
LINK(m)
*/
