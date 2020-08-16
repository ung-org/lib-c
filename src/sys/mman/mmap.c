#if ((!defined _POSIX_C_SOURCE) || (_POSIX_C_SOURCE < 199309L))
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 199309L
#endif

#include <sys/types.h>
#include <sys/mman.h>
#include "_syscall.h"

void *mmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off)
{
	SYSCALL(mmap, void*, MAP_FAILED, addr, len, prot, flags, fildes, off);
}

/*
XOPEN(400)
POSIX(199309)
*/
