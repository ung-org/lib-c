#include <sys/mman.h>

int mprotect(void *addr, size_t len, int prot)
{
	return prot;
}

/*
XOPEN(400)
POSIX(199309)
*/
