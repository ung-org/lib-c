#include <nonstd/syscall.h>

#define __lookup(_name) ((long (*)(const char *))__libc(SYSCALL_LOOKUP))(_name)
