#include <unistd.h>

#if (defined _XOPEN_SOURCE)
#if _XOPEN_SOURCE >= 700
#define _XOPEN_VERSION                                                     (700)
#elif _XOPEN_SOURCE >= 600
#define _XOPEN_VERSION                                                     (600)
#elif _XOPEN_SOURCE >= 500
#define _XOPEN_VERSION                                                     (500)
#else
#define _XOPEN_VERSION                                                       (4)
#endif
#endif

/*
XOPEN(4)
*/
