#include <inttypes.h>
#if WORD_BIT == 64
#define SCNoPTR                                                            "llo"
#else
#define SCNoPTR                                                             "lo"
#endif

/*
STDC(199901)
*/
