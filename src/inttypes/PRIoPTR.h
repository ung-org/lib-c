#include <inttypes.h>
#if WORD_BIT == 64
#define PRIoPTR                                                            "llo"
#else
#define PRIoPTR                                                             "lo"
#endif

/*
STDC(199901)
*/
