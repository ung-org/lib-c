#include <wchar.h>
#include "stdarg.h"

int swscanf(const wchar_t * restrict s, const wchar_t * restrict format, ...)
{
	/*
	va_list ap;
	va_start(ap, format);
	int ret = vswscanf(s, format, ap);
	va_end(ap);
	return ret;
	*/
	(void)s; (void)format;
	return -1;
}

/*
STDC(199409)
*/
