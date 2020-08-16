#include <inttypes.h>
#if WORD_BIT == 64
#define PRIiPTR                                                            "lli"
#else
#define PRIiPTR                                                             "li"
#endif

/*
STDC(199901)
*/
