#if 0

#include <stdio.h>
#include <stdarg.h>
#include "_stdio.h"

int vsscanf(const char * restrict s, const char * restrict format, va_list arg)
{
	struct io_options opt = {
		.fnname = __func__,
		.string = (char*)s,
	};

	return __scanf(&opt, format, arg);
}

/*
STDC(199901)
*/


#endif
