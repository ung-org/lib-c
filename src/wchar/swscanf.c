#if 0

#include <stdarg.h>
#include <wchar.h>

#if __STDC_VERSION__ < 199901L
#define vswscanf __vswscanf
#include "vswscanf.c"
#endif

int swscanf(const wchar_t * restrict s, const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vswscanf(s, format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199409)
*/


#endif
