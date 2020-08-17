#include <stdio.h>
#include <stdarg.h>
#include "_stdio.h"

/** write formatted output **/
int vprintf(const char * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};
	opt.fnname = "vfprintf";
	opt.stream = stdout;
	ret = __printf(&opt, format, arg);
	/*
	RETURN_SUCCESS(the number of characters written);
	RETURN_FAILURE(NEGATIVE());
	*/
	return ret;
}

/***
is equivalent to FUNCTION(printf), but with a TYPEDEF(va_list)
argument instead of variadic arguments. The argument ARGUMENT(arg) must be
initialized with FUNCTION(va_start) prior to calling THIS(). The THIS()
function does not call FUNCTION(va_end), so the calling function is
responsible for this.
***/
/*
STDC(1)
*/
