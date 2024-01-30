#include <stdarg.h>
#include "_stdio.h"

int vsscanf_s(const char * restrict s, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	(void)s; (void)format; (void)arg;
	return 0;
}

/*
CEXT1(201112)
*/
