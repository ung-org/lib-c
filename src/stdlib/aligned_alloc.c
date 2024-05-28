#include <stdlib.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

void *aligned_alloc(size_t alignment, size_t size)
{
	SIGNAL_SAFE(0);
	return __jkmalloc(NULL, NULL, 0, NULL, alignment, size, 0);
}

/*
STDC(201112)
*/
