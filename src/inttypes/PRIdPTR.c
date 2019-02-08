#include <inttypes.h>
#if WORD_BIT == 64
#define PRIdPTR                                                            "lld"
#else
#define PRIdPTR                                                             "ld"
#endif

/*
STDC(199901)
*/
