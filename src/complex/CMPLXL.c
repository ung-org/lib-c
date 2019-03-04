#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define CMPLXL(__x, __y) \
	((long double complex)((long double)(__x) + \
		_Imaginary_I * (long double)(__y)))
#else
#define CMPLXL(__x, __y) \
	(((union { \
		long double complex __c; \
		long double __ld[2]; \
	}){ .__ld = { __x, __y } }).__c)
#endif

/*
STDC(201112)
*/
