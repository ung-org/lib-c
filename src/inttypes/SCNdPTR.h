#include <inttypes.h>
#if WORD_BIT == 64
#define SCNdPTR                                                            "lld"
#else
#define SCNdPTR                                                             "ld"
#endif

/*
STDC(199901)
*/
