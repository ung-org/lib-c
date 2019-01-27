#include "nonstd/types.h"

#ifndef PROT_READ
# define PROT_READ 0x1
#endif
#ifndef PROT_WRITE
# define PROT_WRITE 0x2
#endif
#ifndef MAP_PRIVATE
# define MAP_PRIVATE 0x02
#endif

#define mmap(_a, _l, _p, _f, _d, _o) __libc.syscall(__libc.syscall_lookup("mmap"), _a, _l, _p, _f, _d, _o)
