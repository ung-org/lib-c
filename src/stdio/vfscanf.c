#include <stdio.h>
#include "_stdio.h"

int vfscanf(FILE * restrict stream, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	struct io_options opt = {
		.fnname = __func__,
		.stream = stream,
	};

	return __scanf(&opt, format, arg);
}

/*
STDC(199901)
*/
