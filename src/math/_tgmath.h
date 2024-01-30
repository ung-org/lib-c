#ifndef __NONSTD_TGMATH_H__
#define __NONSTD_TGMATH_H__
#include <math.h>

#ifndef FP_ZERO
#include "FP_ZERO.h"
#endif

#ifndef FP_INFINITE
#include "FP_INFINITE.h"
#endif

#ifndef FP_NAN
#include "FP_NAN.h"
#endif

#ifndef FP_NORMAL
#include "FP_NORMAL.h"
#endif

#ifndef NAN
#include "NAN.h"
#endif

#ifndef INFINITY
#include "INFINITY.h"
#endif

#if ((!defined __STDC_VERSION__) || (__STDC_VERSION__ < 199901L))
#undef feraiseexcept
#define feraiseexcept(_)
#endif

#ifndef fpclassify
#include "fpclassify.h"
#endif

#ifndef signbit
#include "signbit.h"
#endif

#ifndef copysign
#define copysign(_x, _y) (_x < 0 ? -_y : _y)
#endif

#ifndef M_PI
#include "M_PI.h"
#endif

#ifndef M_PI_2
#include "M_PI_2.h"
#endif

#ifndef M_PI_4
#include "M_PI_4.h"
#endif

#ifdef TGSOURCE

# if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
#  define TGCMPLX(__x, __y)	CMPLXF(__x, __y)
#  define TGFN(__x)		__x##f
#  define TYPE			float
#  define TGHUGE		HUGE_VALF
#  include TGSOURCE
#  undef TGCMPLX
#  undef TGFN
#  undef TYPE
#  undef TGHUGE

#  define TGCMPLX(__x, __y)	CMPLXL(__x, __y)
#  define TGFN(__x)		__x##l
#  define TYPE			long double
#  define TGHUGE		HUGE_VALL
#  include TGSOURCE
#  undef TGCMPLX
#  undef TGFN
#  undef TYPE
#  undef TGHUGE
# endif

#endif

#define TGCMPLX(__x, __y)	CMPLX(__x, __y)
#define TGFN(__x)		__x
#define TYPE			double
#define TGHUGE			HUGE_VAL

/*
STDC(-1)
*/

#endif
