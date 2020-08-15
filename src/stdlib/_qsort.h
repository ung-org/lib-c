#include <stdlib.h>

struct __qs {
	char *base;
	size_t size;
	int (*compar)(const void *, const void *);
};

static void __swap(struct __qs *a, size_t b, size_t c)
{
	char *x = a->base + (a->size * b);
	char *y = a->base + (a->size * c);
	size_t i;

	for (i = 0; i < a->size; i++) {
		char tmp = x[i];
		x[i] = y[i];
		y[i] = tmp;
	}
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
