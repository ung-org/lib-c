#include <math.h>
                             int __isnanf(float x);
                            int __isnand(double x);
                       int __isnanl(long double x);

#define isnan(x)              ((sizeof (x) == sizeof (float)) ? __isnanf(x) : \
                    (sizeof (x) == sizeof (double)) ? __isnand(x) : __isnanl(x))

/*
STDC(199901)
LINK(m)
*/
