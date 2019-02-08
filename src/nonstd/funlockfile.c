#include <nonstd/io.h>

#if !(defined _POSIX_C_SOURCE && 199506L <= _POSIX_C_SOURCE) && !(defined _XOPEN_SOURCE && 500 <= _XOPEN_SOURCE)
#define funlockfile(f) (void)(f)
#endif
