#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "_stdio.h"

int vsscanf(const char * restrict s, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, strlen(s), format, strlen(format));

	struct io_options opt = {
		.fnname = __func__,
		.string = (char*)s,
	};

	return __scanf(&opt, format, arg);
}

/*
STDC(199901)
*/
