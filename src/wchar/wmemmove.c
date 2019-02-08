#include <wchar.h>
#include "stdlib.h"

wchar_t * wmemmove(wchar_t * s1, const wchar_t * s2, size_t n)
{
	wchar_t *tmp = malloc(n * sizeof(wchar_t));
	wmemcpy(tmp, s2, n);
	wmemcpy(s1, tmp, n);
	free(tmp);
	return s1;
}

/*
STDC(199409)
*/
