#include <stdarg.h>
#include <string.h>
#include "_format.h"

int vsscanf_s(const char * restrict s, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, strlen(s), format, strlen(format));

	(void)s; (void)format; (void)arg;
	return 0;
}

/*
CEXT1(201112)
*/
