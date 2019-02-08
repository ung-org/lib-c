#include <complex.h>

#ifdef __STDC_IEC_559_COMPLEX__
#define _Imaginary_I        (const float _Imaginary)1 /* TODO: imaginary unit */
#endif

/* This should only be defined if imaginary types are supported. */
/*
STDC(199901)
*/
