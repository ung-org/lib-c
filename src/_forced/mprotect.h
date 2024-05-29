//#include <sys/mman.h>
#include "_syscall.h"
#define mprotect(__ptr, __len, __prot)  __syscall(__sys_mprotect, __ptr, __len, __prot)
#define PROT_NONE 0x0
#define PROT_READ 0x1
#define PROT_WRITE 0x2
