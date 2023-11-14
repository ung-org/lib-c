#if 0

#include <stdio.h>
#include <wchar.h>
#include "stdio/_stdio.h"

#if __STDC_VERSION__ < 199901L
	static
#endif

int vfwscanf(FILE * restrict stream, const wchar_t * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = __func__;
	opt.stream = stream;
	ret = __scanf(&opt, (const char*)format, arg);
	return ret;
}

/*
STDC(199901)
*/


#endif
