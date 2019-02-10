#include <unistd.h>

#if (defined _POSIX_C_SOURCE)
#if _POSIX_C_SOURCE >= 200809L
#define _POSIX2_VERSION                                                (200809L)
#elif _POSIX_C_SOURCE >= 200112L
#define _POSIX2_VERSION                                                (200112L)
#elif _POSIX_C_SOURCE >= 199506L
#define _POSIX2_VERSION                                                (199506L)
#elif _POSIX_C_SOURCE >= 2
#define _POSIX2_VERSION                                                (199209L)
#else
#undef _POSIX2_VERSION
#endif
#endif

/*
POSIX(2)
*/
