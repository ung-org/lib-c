#include <math.h>
                                 int __isinff(float x);
                                int __isinfd(double x);
                           int __isinfl(long double x);

#define isinf(x)              ((sizeof (x) == sizeof (float)) ? __isinff(x) : \
                    (sizeof (x) == sizeof (double)) ? __isinfd(x) : __isinfl(x))

/*
STDC(199901)
LINK(m)
*/
