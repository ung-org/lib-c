#include <stdio.h>
#include "stdarg.h"
#include "nonstd/io.h"

int vsscanf(const char * restrict s, const char * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = __func__;
	opt.string = (char*)s;
	ret = __scanf(&opt, format, arg);
	return ret;
}

/*
STDC(199901)
*/
