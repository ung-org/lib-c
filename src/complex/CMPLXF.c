#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define CMPLXF(__x, __y) \
	((float complex)((float)(__x) + _Imaginary_I * (float)(__y)))
#else
#define CMPLXF(__x, __y) \
	(((union { \
		float complex __c; \
		float __f[2]; \
	}){ .__f = { __x, __y } }).__c)
#endif

/*
STDC(201112)
*/
