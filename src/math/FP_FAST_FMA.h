#include <math.h>

#if 0          /* if fma is generally as fast or faster than multiply and add */
#define FP_FAST_FMA
#else
#undef FP_FAST_FMA
#endif

/*
STDC(199901)
LINK(m)
*/
