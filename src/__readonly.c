#include <limits.h>
#include <stdlib.h>
#include "_readonly.h"
#include "stdlib/_jkmalloc.h"
#include "_forced/mprotect.h"

#ifndef PAGESIZE
#define PAGESIZE	4096
#endif

void* __readonly(ro_action_t action, void *ptr)
{
	switch (action) {
	case RO_ALLOC:
		return __jkmalloc(NULL, NULL, 0, NULL, 1, PAGESIZE, 0, ptr);


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
