#include <math.h>
                              int __fpclassifyf(float x);
                             int __fpclassifyd(double x);
                        int __fpclassifyl(long double x);

#define fpclassify(x)    ((sizeof (x) == sizeof (float)) ? __fpclassifyf(x) : \
	(sizeof (x) == sizeof (double)) ? __fpclassifyd(x) :  __fpclassifyl(x))

/*
STDC(199901)
LINK(m)
*/
