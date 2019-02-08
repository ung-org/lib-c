#include <math.h>
                                int __isfinitef(float x);
                               int __isfinited(double x);
                          int __isfinitel(long double x);

#define isfinite(x)        ((sizeof (x) == sizeof (float)) ? __isfinitef(x) : \
             (sizeof (x) == sizeof (double)) ? __isfinited(x) :  __isfinitel(x))

/*
STDC(199901)
LINK(m)
*/
