#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "_format.h"

int vsnprintf(char * restrict s, size_t n, const char *format, va_list arg)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, n, format, strlen(format));

	struct io_options opt = {
		.fnname = __func__,
		.string = s,
		.maxlen = n,
	};

	return __printf(&opt, format, arg);
}

/*
STDC(199901)
*/
