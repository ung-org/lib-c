#include <limits.h>
#if defined __LP32__ || defined __ILP32__ || defined __LLP64__
#define LONG_MAX                                                   (2147483647L)
#elif defined __ILP64__ || defined __LP64__
#define LONG_MAX                                          (9223372036854775807L)
#endif

/** long maximum **/

/***
is the maximum value representable as a TYPE(long int).
***/

/*
VALUE_MIN(2147483647)
*/
/*
STDC(1)
*/
