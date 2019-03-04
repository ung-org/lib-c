#ifndef __NONSTD_TGMATH_H__
#define __NONSTD_TGMATH_H__
#include <math.h>

#ifdef TGSOURCE

# if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
#  define TGCMPLX(x,y)	CMPLXF(x,y)
#  define TGFN(x)	x##f
#  define TYPE		float
#  define TGHUGE	HUGE_VALF
#  include TGSOURCE
#  undef TGCMPLX
#  undef TGFN
#  undef TYPE
#  undef TGHUGE

#  define TGCMPLX(x,y)  CMPLXL(x,y)
#  define TGFN(x)	x##l
#  define TYPE		long double
#  define TGHUGE	HUGE_VALL
#  include TGSOURCE
#  undef TGCMPLX
#  undef TGFN
#  undef TYPE
#  undef TGHUGE
# endif

#endif

#define TGCMPLX(x,y) CMPLX(x,y)
#define TGFN(x)	x
#define TYPE	double
#define TGHUGE	HUGE_VAL

#endif
