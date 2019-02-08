#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define imaginary                                                     _Imaginary
#endif

/* This should only be defined if imaginary types are supported. */

/*
STDC(199901)
LINK(m)
*/

