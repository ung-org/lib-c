#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

/** write formatted output to a string **/

GCC_SSE_HACK
int sprintf(char * restrict s, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};

	SIGNAL_SAFE(0);
	/* overlap can't be detected because the length of s is unknown */

	opt.fnname = "sprintf";
	opt.string = s;
	opt.maxlen = (size_t)-1;
	va_start(ap, format);
	ret = __printf(&opt, format, ap);
	va_end(ap);
	/*
	RETURN_SUCCESS(the number of characters written to the array, not counting the terminating null);
	*/
	return ret;
}

/***
writes a formatted string to the buffer at ARGUMENT(s). The format of
ARGUMENT(format) and the variadic arguments is the same as that for
FUNCTION(printf).
***/

/*
STDC(1)
*/
