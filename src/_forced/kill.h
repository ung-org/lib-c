#include "_syscall.h"
#define kill(pid, sig)  __scall2(kill, pid, sig)
