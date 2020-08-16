#include <stdlib.h>
#include <string.h>

/** allocate and initialize memory **/

void * calloc(size_t nmemb, size_t size)
{
	void *p = NULL;
	size_t total = nmemb * size;

	if (total < nmemb || total < size) {
		return NULL;
	}

	if (nmemb == 0 || size == 0) {
		return NULL;
	}

	p = malloc(total);
	if (p != NULL) {
		memset(p, 0, size * nmemb);
	}

	return p;
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
