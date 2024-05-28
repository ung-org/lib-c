#ifdef _POSIX_SOURCE
#include <fcntl.h>
#else
#include "_syscall.h"
#define open(_p, _f, _m)        __scall3(open, _p, _f, _m)
#define O_RDONLY 00
#define O_WRONLY 01
#define O_CREAT 0100
#define O_TRUNC 01000
#define O_APPEND 02000
#define O_RDWR 02
#endif
