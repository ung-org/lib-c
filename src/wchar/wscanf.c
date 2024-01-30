#if 0

#include <wchar.h>
#include <stdarg.h>

int wscanf(const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);

	/*
	va_list ap;
	va_start(ap, format);
	int ret = vwscanf(format, ap);
	va_end(ap);
	return ret;
	*/
	(void)format;
	return -1;
}

/*
STDC(199409)
*/


#endif
