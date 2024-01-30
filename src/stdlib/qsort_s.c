#include <stdlib.h>
#include "_stdlib.h"

/** sort an array **/
errno_t qsort_s(void *base, rsize_t nmemb, rsize_t size,
	int (*compar)(const void * x, const void * y, void *context),
	void * context)
{
	SIGNAL_SAFE(0);
	(void)base; (void)nmemb; (void)size; (void)compar; (void)context;
	return 0;
}

/***
The fn(qsort) function sorts the array at arg(base), which consists of
arg(nmemb) elements of arg(size) bytes each.

The sorting is performed by calling arg(compar) with two elements of the array.
The function must return less than 0 if the first argument is less than the
second, 0 if they are equal, and greater than 0 if the first argument is
greater than the second.
***/

/* UNSPECIFIED: the order of equal elements */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/*
CEXT1(201112)
*/
