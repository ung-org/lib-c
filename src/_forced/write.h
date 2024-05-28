#ifdef _POSIX_SOURCE
#include <unistd.h>
#else
#include "_syscall.h"
#define write(_fd, _buf, _size) __scall3(write, _fd, _buf, _size)
#endif
