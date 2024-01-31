#if 0

#include <wchar.h>
#include <stdio.h>
#include <stdarg.h>

#if __STDC_VERSION__ < 199901L
#define vfwscanf __vfwscanf
#include "vfwscanf.c"
#endif

int fwscanf(FILE * restrict stream, const wchar_t * restrict format, ...)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	va_list ap;
	va_start(ap, format);
	int ret = vfwscanf(stream, format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199409)
*/


#endif
