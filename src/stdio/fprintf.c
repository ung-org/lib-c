#if 0

#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

/** write formatted output to a file stream **/

int fprintf(FILE * restrict stream, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = "fprintf";
	opt.stream = stream;
	va_start(ap, format);
	ret = __printf(&opt, format, ap);
	va_end(ap);
	/*
	RETURN_SUCCESS(the number of characters written);
	RETURN_FAILURE(NEGATIVE());
	*/
	return ret;
}

/***
writes a formatted string to ARGUMENT(stream). The format of ARGUMENT(format)
and the variadic arguments is the same as that for FUNCTION(printf).
***/

/*
STDC(1)
*/


#endif
