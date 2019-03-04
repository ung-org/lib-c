#include <math.h>

#define fpclassify(x)    ((sizeof (x) == sizeof (float)) ? __fpclassifyf(x) : \
	(sizeof (x) == sizeof (double)) ? __fpclassify(x) :  __fpclassifyl(x))

/*
STDC(199901)
LINK(m)
*/
