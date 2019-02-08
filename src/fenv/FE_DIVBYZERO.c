#include <fenv.h>

#if 0
#define FE_DIVBYZERO                                                      (1<<0)
#else
#undef FE_DIVBYZERO
#endif

/* Defined iff this exception is supported */

/*
STDC(199901)
LINK(m)
*/
