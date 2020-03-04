#include <stdio.h>
#include "stdarg.h"
#include "_stdio.h"

int snprintf(char * restrict s, size_t n, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = __func__;
	opt.string = s;
	opt.maxlen = n;
	va_start(ap, format);
	ret = __printf(&opt, format, ap);
	va_end(ap);
	return ret;
}

/*
STDC(199901)
*/
