#include <stdli.h>

void *aligned_alloc(size_t alignment, size_t size)
{
	/* all allocations are page aligned */
	(void)alignment;
	return malloc(size);
}

/*
STDC(201112)
*/
