#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define _Imaginary_I \
	(((union { \
		float _Imaginary __i; \
		float __f; \
	}){ .__f = 1.0 }).__i)
#endif

/* This should only be defined if imaginary types are supported. */

/*
STDC(199901)
*/
