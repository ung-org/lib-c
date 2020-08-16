#include <limits.h>
#if defined __LP32__
#define INT_MAX                                                          (32767)
#elif defined __ILP32__ || defined __LLP64__ || defined __LP64__
#define INT_MAX                                                     (2147483647)
#elif defined __ILP64__
#define INT_MAX                                            (9223372036854775807)
#endif

/** int maximum **/

/***
is the maximum value representable as a TYPE(int).
***/

/*
VALUE_MIN(32767)
POSIX_SPECIFIC (issue >= 5): +2147483647
*/
/*
STDC(1)
*/
