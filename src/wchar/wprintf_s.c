#if 0

#include <wchar.h>

int wprintf_s(const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vwprintf_s(format, ap);
	va_end(ap);
	return ret;
}

/*
CEXT1(201112)
*/


#endif
