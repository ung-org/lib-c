#include <unistd.h>
#if _POSIX_C_SOURCE >= 200809L
#define _POSIX_VERISON                                                 (200809L)
#elif _POSIX_C_SOURCE >= 200112L
#define _POSIX_VERSION                                                 (200112L)
#elif _POSIX_C_SOURCE >= 199506L
#define _POSIX_VERSION                                                 (199506L)
#elif _POSIX_C_SOURCE >= 199309L
#define _POSIX_VERSION                                                 (199309L)
#elif defined _POSIX_C_SOURCE
#define _POSIX_VERSION                                                 (199009L)
#else
#define _POSIX_VERSION                                                 (198808L)
#endif
/*
POSIX(1)
*/
