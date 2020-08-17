#include <wchar.h>
#include <stdio.h>
#include <stdarg.h>

int fwprintf(FILE * restrict stream, const wchar_t * restrict format, ...)
{
	va_list ap;
	va_start(ap, format);
	int ret = vfwprintf(stream, format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199409)
*/
