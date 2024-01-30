#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

/** read formatted input from a string **/

int sscanf(const char * restrict s, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};

	SIGNAL_SAFE(0);

	opt.fnname = "sscanf";
	opt.string = (char *)s;
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
reads formatted input from the string ARGUMENT(s). The format of
ARGUMENT(format) at the variadic arguments is the same as that for
FUNCTION(scanf).
***/

/*
STDC(1)
*/
