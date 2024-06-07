#include <stdarg.h>
#include <stdio.h>
#include "_format.h"

/** write formatted output to a string **/

int vsprintf(char *s, const char *format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};

	SIGNAL_SAFE(0);
	/* overlap can't be detected because the size of s is unknown */

	opt.fnname = "fprintf";
	opt.string = s;
	opt.maxlen = (size_t)-1;
	ret = __printf(&opt, format, arg);
	/*
	RETURN_SUCCESS(the number of characters written, not including the final CHAR(\0));
	*/
	return ret;
}

/***
is equivalent to fn(sprintf), but with a TYPEDEF(va_list)
argument instead of variadic arguments. The argument ARGUMENT(arg) must be
initialized with FUNCTION(va_start) prior to calling THIS(). The
THIS() function does not call FUNCTION(va_end), so the calling function is
responsible for this.
***/

/*
STDC(1)
*/
