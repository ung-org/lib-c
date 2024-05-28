#include <stdlib.h>
#include <string.h>
#include "_stdlib.h"
#include "_jkmalloc.h"

/** allocate and initialize memory **/

void * calloc(size_t nmemb, size_t size)
{
	SIGNAL_SAFE(0);

	return __jkmalloc(NULL, NULL, 0, NULL, 1, nmemb, size, NULL);
}

/***
allocates an array of ARGUMENT(nmemb) elements, each of which
are ARGUMENT(size) bytes, and sets all their bits to 0.
***/

/*
UNSPECIFIED(The order and contiguity of space allocated by success calls)
IMPLEMENTATION(What is returned if ARGUMENT(nmemb) or ARGUMENT(size) is 0)
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the newly allocated memory)
STDC(1)
*/
