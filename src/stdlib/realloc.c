#include <stdlib.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

/** change the amount of memory allocated **/

void * realloc(void * ptr, size_t size)
{
	SIGNAL_SAFE(0);

	return __jkmalloc(ptr, 1, size, 0, NULL);
}

CHECK_2(void *, NULL, realloc, void *, size_t)

/***
changes the amount of memory allocated to ARGUMENT(ptr) to ARGUMENT(size)
bytes.

If ARGUMENT(ptr) is CONSTANT(NULL), a new allocation is made.

If ARGUMENT(size) is 0 and ARGUMENT(ptr) is not CONSTANT(NULL), the memory at ARGUMENT(ptr) is
deallocated.

Otherwise, the memory allocated to ARGUMENT(ptr) is resized. If enough memory cannot
be allocated, ARGUMENT(ptr) will not change. If enough memory is available, the
address of ARGUMENT(ptr) may change, but the contents will be the same up to the
minimum of the old and new sizes.
***/

/*
UNSPECIFIED(The order and contiguity of space allocated by success calls)
UNDEFINED(ARGUMENT(ptr) is not CONSTANT(NULL) or a pointer returned by a previous call to FUNCTION(calloc), FUNCTION(malloc), or FUNCTION(realloc))
UNDEFINED(ARGUMENT(ptr) has been previously deallocated by FUNCTION(free) or FUNCTION(realloc))
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the reallocate space)
STDC(1)
*/
