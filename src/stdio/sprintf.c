#include <stdio.h>
#include "stdarg.h"
#include "nonstd/io.h"

#if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#include "stdint.h"
#else
#include "limits.h"
#define SIZE_MAX INT_MAX
#endif

/** write formatted output to a string **/
int sprintf(char * restrict s, const char * restrict format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = "sprintf";
	opt.string = s;
	opt.maxlen = SIZE_MAX;
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
