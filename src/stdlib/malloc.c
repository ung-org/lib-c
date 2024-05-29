#include <stdlib.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

/** allocate memory **/
void * malloc(size_t size)
{
	SIGNAL_SAFE(0);

	return __jkmalloc(NULL, 1, size, 0, NULL);
}

CHECK_1(void *, NULL, malloc, size_t)

/***
allocates ARGUMENT(size) bytes of memory.
***/

/*
UNSPECIFIED(The order and contiguity of space allocated by success calls)
IMPLEMENTATION(What is returned if ARGUMENT(size) is 0)
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the allocated space)
STDC(1)
*/
