#include <stdlib.h>
#include "_stdlib.h"

/** sort an array **/

static void __swap(char *base, size_t size, size_t b, size_t c)
{
	char *x = base + (size * b);
	char *y = base + (size * c);
	size_t i;

	for (i = 0; i < size; i++) {
		char tmp = x[i];
		x[i] = y[i];
		y[i] = tmp;
	}
}

static void __qsort(char *base, size_t size, size_t lo, size_t hi, int (*compar)(const void *, const void *))
{
	size_t i = lo, j = 0;
	if (lo >= hi) {
		return;
	}

	for (j = lo; j < hi; j++) {
		if (compar(base + (size * j), base + (size * hi)) < 0) {
			__swap(base, size, i, j);
			i++;
		}
	}
	__swap(base, size, i, hi);

	__qsort(base, size, lo, i - 1, compar);
	__qsort(base, size, i + 1, hi, compar);
}

void qsort(void * base, size_t nmemb, size_t size, int (*compar)(const void *, const void *))
{
	SIGNAL_SAFE(0);
	__qsort(base, size, 0, nmemb - 1, compar);
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
