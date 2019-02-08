#include <fenv.h>

#define FE_ALL_EXCEPT (FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW)

/* The bitwise OR of all supported macros */

/* see appendix F regarding __STDC_IEC_559__ == 1 */

/*
STDC(199901)
LINK(m)
*/
