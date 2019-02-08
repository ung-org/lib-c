#include "stdarg.h"
#include <wchar.h>

int vswprintf(wchar_t * restrict s, size_t n, const wchar_t * restrict format, va_list arg)
{
	(void)s; (void)n; (void)format; (void)arg;
	return -1;
}

/*
STDC(199409)
*/
