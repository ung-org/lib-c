#include <stdio.h>
#include "stdarg.h"
#include "_stdio.h"

/** read formatted input from a file stream **/
int fscanf(FILE * restrict stream, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = "fscanf";
	opt.stream = stream;
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
reads formatted input from ARGUMENT(stream). The format of ARGUMENT(format) at
the variadic arguments is the same as that for FUNCTION(scanf).
***/
/*
STDC(1)
*/
