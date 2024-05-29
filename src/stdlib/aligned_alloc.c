#include <stdlib.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

void *aligned_alloc(size_t alignment, size_t size)
{
	SIGNAL_SAFE(0);
	return __jkmalloc(NULL, alignment, size, 0, NULL);
}

CHECK_2(void *, NULL, aligned_alloc, size_t, size_t)

/*
STDC(201112)
*/
