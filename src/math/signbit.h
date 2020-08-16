#include <math.h>

#define signbit(__x) \
	(sizeof(__x) == sizeof(long double) ? \
		((((union { \
			long double __f; \
			char __c[sizeof(__x)]; \
		}){.__f = (__x)}).__c[sizeof(__x)-1] & 0x80) == 0x80 ? 1 : 0) : \
	sizeof(__x) == sizeof(double) ? \
		((((union { \
			double __f; \
			char __c[sizeof(__x)]; \
		}){.__f = (__x)}).__c[sizeof(__x)-1] & 0x80) == 0x80 ? 1 : 0) : \
		(((union { \
			float __f; \
			char __c[sizeof(__x)]; \
		}){.__f = (__x)}).__c[sizeof(__x)-1] & 0x80) == 0x80 ? 1 : 0)


/*
STDC(199901)
LINK(m)
*/
