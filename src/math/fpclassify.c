#include <math.h>

#define fpclassify(__x) \
	              ((sizeof (__x) == sizeof (float)) ? __fpclassifyf(__x) : \
		       (sizeof (__x) == sizeof (double)) ? __fpclassify(__x) : \
		                                          __fpclassifyl(__x))

/*
STDC(199901)
LINK(m)
*/
