#include <stdlib.h>
#include <string.h>

struct __qs {
	char *base;
	size_t size;
	int (*compar)(const void *, const void *);
	char buf[64];
	char *swap;
};

static void __swap(struct __qs *a, size_t i, size_t j)
{
	memcpy(a->swap, a->base + (a->size * i), a->size);
	memcpy(a->base + (a->size * i), a->base + (a->size * j), a->size);
	memcpy(a->base + (a->size * j), a->swap, a->size);
}

static size_t __partition(struct __qs *a, size_t lo, size_t hi)
{
	size_t i = lo, j = 0;
	for (j = lo; j < hi; j++) {
		if (a->compar(a->base + (a->size * j), a->base + (a->size * hi)) < 0) {
			__swap(a, i, j);
			i++;
		}
	}
	__swap(a, i, hi);
	return i;
}

static void __qsort(struct __qs *a, size_t lo, size_t hi)
{
	if (lo < hi) {
		size_t p = __partition(a, lo, hi);
		__qsort(a, lo, p - 1);
		__qsort(a, p + 1, hi);
	}
}
