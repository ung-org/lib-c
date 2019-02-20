#include <sys/mman.h>

void *mmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off)
{
	return addr;
}

/*
XOPEN(400)
POSIX(199309)
*/
