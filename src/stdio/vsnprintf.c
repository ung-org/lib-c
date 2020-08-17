#include <stdio.h>
#include <stdarg.h>
#include "_stdio.h"

int vsnprintf(char * restrict s, size_t n, const char *format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = "fprintf";
	opt.string = s;
	opt.maxlen = n;
	ret = __printf(&opt, format, arg);
	return ret;
}

/*
STDC(199901)
*/
