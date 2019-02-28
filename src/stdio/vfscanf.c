#include <stdio.h>
#include "nonstd/io.h"

int vfscanf(FILE * restrict stream, const char * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = __func__;
	opt.stream = stream;
	ret = __scanf(&opt, format, arg);
	return ret;
}

/*
STDC(199901)
*/
