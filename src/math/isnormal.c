#include <math.h>
                                    int __isnormalf(float x);
                                   int __isnormald(double x);
                              int __isnormall(long double x);

#define isnormal(x)        ((sizeof (x) == sizeof (float)) ? __isnormalf(x) : \
	(sizeof (x) == sizeof (double)) ? __isnormald(x) : __isnormall(x))

/*
STDC(199901)
LINK(m)
*/
