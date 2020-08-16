#include <inttypes.h>
#if WORD_BIT == 64
#define SCNxPTR                                                            "llx"
#else
#define SCNxPTR                                                             "lx"
#endif

/*
STDC(199901)
*/
