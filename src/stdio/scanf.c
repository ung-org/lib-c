#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

/** read formatted input **/

int scanf(const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = "scanf";
	opt.stream = stdout;
	va_start(ap, format);
	ret = __scanf(&opt, format, ap);
	va_end(ap);
	/*
	RETURN_SUCCESS(the number of input items assigned);
	RETURN_FAILURE(CONSTANT(EOF));
	*/
	return ret;
}

/***
reads formatted input from macro(stdin).

FIXME: scanf format goes here
***/

/*
STDC(1)
*/
