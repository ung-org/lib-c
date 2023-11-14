#if 0

#include <wchar.h>
#include "stdio/_stdio.h"

#if __STDC_VERSION__ < 199901L
	static
#endif

int vswscanf(const wchar_t * restrict s, const wchar_t * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = __func__;
	opt.string = (char*)s;
	ret = __scanf(&opt, (const char*)format, arg);
	return ret;
}

/*
STDC(199901)
*/


#endif
