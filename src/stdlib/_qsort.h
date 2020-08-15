#include <stdlib.h>

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
