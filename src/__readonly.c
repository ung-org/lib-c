#include <stdlib.h>
#include "_readonly.h"

#ifdef _POSIX_C_SOURCE
#include <sys/mman.h>
#include <limits.h>
#else
#include "_syscall.h"
#define mprotect(__ptr, __len, __prot) __syscall(__sys_mprotect, __ptr, __len, __prot)
#define PROT_READ	1
#define PROT_WRITE	2
#define PAGESIZE 4096
#endif

void* __readonly(ro_action_t action, void *ptr)
{
	switch (action) {
	case RO_ALLOC:
		/* set magic to JK_READONLY */
		/* set label to ptr */
		return malloc(PAGESIZE);

	case RO_FREE:
		free(ptr);
		return NULL;

	case RO_LOCK:
		mprotect(ptr, PAGESIZE, PROT_READ);
		break;

	case RO_UNLOCK:
		mprotect(ptr, PAGESIZE, PROT_READ | PROT_WRITE);
		break;
	}

	return ptr;
}
