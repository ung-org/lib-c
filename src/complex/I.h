#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define I                                                           _Imaginary_I
#else
#define I                                                             _Complex_I
#endif

/* see appendix G for whether or not to set __STDC_IEC_559_COMPLEX__ == 1 */

/*
STDC(199901)
*/
