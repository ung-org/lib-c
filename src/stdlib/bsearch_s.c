#include <stddef.h>
#include "_stdlib.h"

/** binary search **/

void *bsearch_s(const void * key, const void * base, rsize_t nmemb, rsize_t size, int (*compar)(const void *x, const void *y, void * context), void *context)
{
	SIGNAL_SAFE(0);

	/* TODO: testing */
	(void)size;
	void *ret = NULL;
	size_t i = nmemb / 2;
	unsigned int trip = 1;

	while (ret == NULL) {
		int comp = compar(key, base+i, context);
		if (comp == 0) {
			return (void*)base+i;
		} else if (comp > 0) {
			i -= (nmemb >> trip);
		} else {
			i += (nmemb >> trip);
		}
	}

	return NULL;
}

/***
The fn(bsearch) function performs a binary search for arg(key) in the array
arg(base), which contains arg(nmemb) members of arg(size) bytes each.

The search is performed by calling arg(compar) with the first argument of
arg(key), and the second being an element from the array at arg(base). The
function must return less than 0 if arg(key) is less than the other element,
0 if they are equal, and greater than 0 if arg(key) is greater than the other
element.
***/

/* UNSPECIFIED: which element is matched if two elements are equal */
/* UNDEFINED: the array at arg(base) is not sorted */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN(NULL): no match was found */
/* RETURN: a pointer to the matching element */

/*
CEXT1(201112)
*/
