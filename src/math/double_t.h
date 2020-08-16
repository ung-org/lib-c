#include <math.h>

#if FLT_EVAL_METHOD == 0
typedef double double_t;
#elif FLT_EVAL_METHOD == 1
typedef double double_t;
#elif FLT_EVAL_METHOD == 2
typedef long double double_t;
#else
 /* implementation defined */
#endif

/*
STDC(199901)
LINK(m)
*/
