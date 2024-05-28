#include <stdlib.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

/** deallocate memory **/

void free(void * ptr)
{
	SIGNAL_SAFE(0);

	if (ptr) {
		__jkmalloc(NULL, NULL, 0, ptr, 0, 0, 0);
	}
}

/***
deallocates the memory at ARGUMENT(ptr). Specifying CONSTANT(NULL)
causes nothing to happen.
***/

/*
UNDEFINED(ARGUMENT(ptr) was not returned by a previous call to FUNCTION(calloc), FUNCTION(malloc), or FUNCTION(realloc))
STDC(1)
*/
