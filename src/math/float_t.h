#include <math.h>

#if FLT_EVAL_METHOD == 0
typedef float float_t;
#elif FLT_EVAL_METHOD == 1
typedef double float_t;
#elif FLT_EVAL_METHOD == 2
typedef long double float_t;
#else
 /* implementation defined */
#endif

/*
STDC(199901)
LINK(m)
*/
