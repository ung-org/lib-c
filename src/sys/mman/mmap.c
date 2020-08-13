#include "sys/types.h"
#include <sys/mman.h>
#include "_syscall.h"

#ifndef MAP_FAILED
#include "MAP_FAILED.c"
#endif

void *mmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off)
{
	SYSCALL(mmap, void*, MAP_FAILED, addr, len, prot, flags, fildes, off);
}

/*
XOPEN(400)
POSIX(199309)
*/
