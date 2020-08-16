#ifdef __LLP64__
# if ! defined __STDC_VERSION__ || __STDC_VERSION__ < 199909L
typedef __int64                                                       ptrdiff_t;
# else
typedef long long int                                                 ptrdiff_t;
# endif
#else
typedef long int                                                      ptrdiff_t;
#endif

/** pointer arithmetic type **/

/***
is a signed integral type which results when subtracting one pointer
from another.
***/

/*
TYPEDEF(signed integer)
STDC(1)
*/
