#if 0

#include <stdlib.h>

/** binary search **/

void * bsearch(const void * key, const void * base, size_t nmemb, size_t size, int (*compar)(const void *, const void*))
{
	/* TODO: testing */
	void *ret = NULL;
	size_t i = nmemb / 2;
	unsigned int trip = 1;
	const char *addr = base;

	while (ret == NULL) {
		int comp = compar(key, addr + (i * size));
		if (comp == 0) {
			return (void*)(addr + (i * size));
		} else if (comp > 0) {
			i -= (nmemb >> trip);
		} else {
			i += (nmemb >> trip);
		}
	}
	return NULL;
}

/***
performs a binary search for ARGUMENT(key) in the array
ARGUMENT(base), which contains ARGUMENT(nmemb) members of ARGUMENT(size) bytes
each.

The search is performed by calling ARGUMENT(compar) with the first argument of
ARGUMENT(key), and the second being an element from the array at
ARGUMENT(base). The function must return less than 0 if ARGUMENT(key) is less
than the other element, 0 if they are equal, and greater than 0 if
ARGUMENT(key) is greater than the other element.
***/

/*
UNSPECIFIED(Which element is matched if two elements are equal)
UNDEFINED(The array at ARGUMENT(base) is not sorted)
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the matching element)
STDC(1)
*/


#endif
