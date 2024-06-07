#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "_format.h"

GCC_SSE_HACK
int snprintf(char * restrict s, size_t n, const char * restrict format, ...)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, n, format, strlen(format));

	struct io_options opt = {
		.fnname = __func__,
		.string = s,
		.maxlen = n,
	};

	va_list ap;
	va_start(ap, format);
	int ret = __printf(&opt, format, ap);
	va_end(ap);

	return ret;
}

/*
STDC(199901)
*/
