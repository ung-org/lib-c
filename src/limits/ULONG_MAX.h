#include <limits.h>
#if defined __LP32__ || defined __ILP32__ || defined __LLP64__
#define ULONG_MAX                                                 (4294967295UL)
#elif defined __ILP64__ || defined __LP64__
#define ULONG_MAX                                       (18446744073709551615UL)
#endif

/** unsigned long maximum **/

/***
is the maximum value representable as a TYPE(unsigned long int).
***/

/*
VALUE_MIN(4294967295)
*/
/*
STDC(1)
*/
