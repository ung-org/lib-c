#include <stdlib.h>
#include "_qsort.h"

/** sort an array **/

void qsort(void * base, size_t nmemb, size_t size, int (*compar)(const void *, const void *))
{
	struct __qs qs = {
		base,
		size,
		compar,
	};
	__qsort(&qs, 0, nmemb);
}

/***
sorts the array at ARGUMENT(base), which consists of ARGUMENT(nmemb) elements
of ARGUMENT(size) bytes each.

The sorting is performed by calling ARGUMENT(compar) with two elements of the
array.  The function must return less than 0 if the first argument is less
than the second, 0 if they are equal, and greater than 0 if the first argument
is greater than the second.
***/

/*
UNSPECIFIED(The order of equal elements)
STDC(1)
*/
