#if 0

#include <stdio.h>
#include <wchar.h>

int fwprintf_s(FILE * restrict stream, const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vfwprintf_s(stream, format, ap);
	va_end(ap);
	return ret;
}

/*
CEXT1(201112)
*/


#endif
