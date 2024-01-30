#if 0

#include <wchar.h>
#include <stdarg.h>

int swprintf(wchar_t * restrict s, size_t n, const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vswprintf(s, n, format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199409)
*/


#endif
