#include <math.h>

#if 0         /* if fmaf is generally as fast or faster than multiply and add */
#define FP_FAST_FMAF
#else
#undef FP_FAST_FMAF
#endif

/*
STDC(199901)
LINK(m)
*/
