#include "_syscall.h"

#define munmap(_a, _l)                  __syscall(__sys_munmap, _a, _l)

