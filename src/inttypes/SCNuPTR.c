#include <inttypes.h>
#if WORD_BIT == 64
#define SCNuPTR                                                            "llu"
#else
#define SCNuPTR                                                             "lu"
#endif

/*
STDC(199901)
*/
