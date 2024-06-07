#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include "_format.h"

/** write formatted output to a file stream **/

GCC_SSE_HACK
int vfprintf(FILE * restrict stream, const char * restrict format, va_list arg)
{
	int ret = 0;
	struct io_options opt = {0};

	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(stream, sizeof(stream), format, strlen(format));

	opt.fnname = "vfprintf";
	opt.stream = stream;
	ret = __printf(&opt, format, arg);
	/*
	RETURN_SUCCESS(the number of characters written);
	RETURN_FAILURE(an error occured);
	*/
	return ret;
}

/***
is equivalent to FUNCTION(fprintf), but with a TYPEDEF(va_list)
argument instead of variadic arguments. The argument ARGUMENT(arg) must be
initialized with FUNCTION(va_start) prior to calling THIS(). The THIS()
function does not call FUNCTION(va_end), so the calling function is
responsible for this.
***/

/*
STDC(1)
*/
