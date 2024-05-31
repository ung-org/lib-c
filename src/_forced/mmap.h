#include "_syscall.h"

#define mmap(_a, _l, _p, _fl, _fd, _o)  (void*)__syscall(__sys_mmap, _a, _l, _p, _fl, _fd, _o)

#define PROT_NONE 0x0
#define PROT_READ 0x1
#define PROT_WRITE 0x2
#define PROT_EXEC 0x4
#define MAP_PRIVATE 0x02
#define MAP_FAILED (void*)(-1)
#define MAP_ANONYMOUS (0x20)

