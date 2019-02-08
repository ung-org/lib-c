#include <limits.h>
#if defined __LP32__
#define UINT_MAX                                                        (65535U)
#elif defined __ILP32__ || defined __LLP64__ || defined __LP64__
#define UINT_MAX                                                   (4294967295U)
#elif defined __ILP64__
#define UINT_MAX                                         (18446744073709551616U)
#endif

/** unsigned int maximum **/

/***
is the maximum value representable as a TYPE(unsigned int).
***/

/*
VALUE_MIN(65535)
POSIX_SPECIFIC(issue >= 5): MIN: 4294967295
*/
/*
STDC(1)
*/
