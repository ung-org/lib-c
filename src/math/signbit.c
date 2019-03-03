#include <math.h>

#define signbit(x) \
	(sizeof(x) == sizeof(long double) ? \
		((((union { \
			long double __f; \
			char __c[sizeof(x)]; \
		}){.__f = (x)}).__c[sizeof(x)-1] & 0x80) == 0x80 ? 1 : 0) : \
	sizeof(x) == sizeof(double) ? \
		((((union { \
			double __f; \
			char __c[sizeof(x)]; \
		}){.__f = (x)}).__c[sizeof(x)-1] & 0x80) == 0x80 ? 1 : 0) : \
		(((union { \
			float __f; \
			char __c[sizeof(x)]; \
		}){.__f = (x)}).__c[sizeof(x)-1] & 0x80) == 0x80 ? 1 : 0)


/*
STDC(199901)
LINK(m)
*/
