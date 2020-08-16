#include <math.h>

#if 0         /* if fmal is generally as fast or faster than multiply and add */
#define FP_FAST_FMAL
#else
#undef FP_FAST_FMAL
#endif

/*
STDC(199901)
LINK(m)
*/
