#if 0

#include <stdarg.h>
#include <wchar.h>
#include "stdio/_stdio.h"

int vswprintf(wchar_t * restrict s, size_t n, const wchar_t * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = "vswprintf";
	opt.wstring = s;
	opt.maxlen = n;
	ret = __printf(&opt, (const char*)format, arg);
	return ret;
}

/*
STDC(199409)
*/


#endif
