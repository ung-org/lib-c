#include "_syscall.h"
#define unlink(_f)      __scall1(unlink, _f)
