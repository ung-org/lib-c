#include <inttypes.h>
#if WORD_BIT == 64
#define PRIxPTR                                                            "llx"
#else
#define PRIxPTR                                                             "lx"
#endif

/*
STDC(199901)
*/
