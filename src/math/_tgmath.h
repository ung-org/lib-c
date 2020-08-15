#ifndef __NONSTD_TGMATH_H__
#define __NONSTD_TGMATH_H__
#include <math.h>

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

#ifndef FP_ZERO
#include "FP_ZERO.c"
#endif

#ifndef FP_INFINITE
#include "FP_INFINITE.c"
#endif

#ifndef FP_NAN
#include "FP_NAN.c"
#endif

#ifndef NAN
#include "NAN.c"
#endif

#ifndef INFINITY
#include "INFINITY.c"
#endif

#undef feraiseexcept
#define feraiseexcept(_)

#ifndef fpclassify
#include "fpclassify.c"
#endif

#ifndef signbit
#include "signbit.c"
#endif

#ifndef copysign
#define copysign(_x, _y) (_x < 0 ? -_y : _y)
#endif

#endif
