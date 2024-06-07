#include <stdio.h>
#include <string.h>
#include "_format.h"

int vsnprintf_s(char * restrict s, rsize_t n, const char * restrict format, va_list arg)
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
CEXT1(201112)
*/
