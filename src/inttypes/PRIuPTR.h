#include <inttypes.h>
#if WORD_BIT == 64
#define PRIuPTR                                                            "llu"
#else
#define PRIuPTR                                                             "lu"
#endif

/*
STDC(199901)
*/
