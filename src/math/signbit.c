#include <math.h>
                               int __signbitf(float x);
                              int __signbitd(double x);
                         int __signbitl(long double x);

#define signbit(x)          ((sizeof (x) == sizeof (float)) ? __signbitf(x) : \
	(sizeof (x) == sizeof (double)) ? __signbitd(x) : __signbitl(x))

/*
STDC(199901)
LINK(m)
*/
