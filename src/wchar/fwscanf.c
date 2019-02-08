#include <wchar.h>
#include "stdio.h"
#include "stdarg.h"

int fwscanf(FILE * restrict stream, const wchar_t * restrict format, ...)
{
	/*
	va_list ap;
	va_start(ap, format);
	int ret = vfwscanf(stream, format, ap);
	va_end(ap);
	return ret;
	*/
	(void)stream; (void)format;
	return -1;
}

/*
STDC(199409)
*/
