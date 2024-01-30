#include <stdlib.h>
#include "_stdlib.h"

void *aligned_alloc(size_t alignment, size_t size)
{
	SIGNAL_SAFE(0);
	/* all allocations are page aligned */
	(void)alignment;
	return malloc(size);
}

/*
STDC(201112)
*/
