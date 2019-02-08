/* Implementation details */
#include <math.h>
#include <complex.h>

#if __STDC_VERSION__ >= 20110101L
#define __tg(fn, x) _Generic((x), long double: fn##l, \
                                  float: fn##f, \
                                  default: fn)(x)
#else
#define __tg(fn, x) (sizeof(x) == sizeof(long double) ? fn##l(x) : \
                    (sizeof(x) == sizeof(float) ? fn##f(x) : \
                    fn(x)))
#endif

#define cos(x) __tg(cos, x)

/*c 99:??;tgmath.h c*/
