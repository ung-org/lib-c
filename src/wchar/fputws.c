#include <wchar.h>
#include "stdio.h"

int fputws(const wchar_t * restrict s, FILE * restrict stream)
{
	(void)s; (void)stream;
	return -1;
}

/*
STDC(199409)
*/
