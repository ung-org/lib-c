#include "_syscall.h"
#define isatty(_fd)             (-1) /*ioctl(_fd, TCFLSH, 0) */
#define TCFLSH  0x540B
