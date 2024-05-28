#ifdef _POSIX_SOURCE
#include <unistd.h>
#else
#include "_syscall.h"
#define close(_fd)      __scall1(close, _fd)
#endif
