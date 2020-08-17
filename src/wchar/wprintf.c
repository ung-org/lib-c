#include <wchar.h>
#include <stdarg.h>

int wprintf(const wchar_t * restrict format, ...)
{
	va_list ap;
	va_start(ap, format);
	int ret = vwprintf(format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199409)
*/
