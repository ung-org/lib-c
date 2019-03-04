#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define CMPLX(__x, __y) \
	((double complex)((double)(__x) + _Imaginary_I * (double)(__y)))
#else
#define CMPLX(__x, __y) \
	(((union { \
		double complex __c; \
		double __d[2]; \
	}){ .__d = { __x, __y } }).__c)
#endif

/*
STDC(201112)
*/
