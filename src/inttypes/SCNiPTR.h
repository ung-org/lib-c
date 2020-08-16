#include <inttypes.h>
#if WORD_BIT == 64
#define SCNiPTR                                                            "lli"
#else
#define SCNiPTR                                                             "li"
#endif

/*
STDC(199901)
*/
