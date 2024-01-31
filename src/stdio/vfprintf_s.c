#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "_stdio.h"

/** write formatted output to a file stream **/
int vfprintf_s(FILE * restrict stream, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(stream, sizeof(*stream), format, strlen(format));

	struct io_options opt = {
		.fnname = __func__,
		.stream = stream,
	};
	return __printf(&opt, format, arg);
}

/***
The fn(vfprintf) function is equivalent to fn(fprintf), but with a type(va_list)
argument instead of variadic arguments. The argument arg(arg) must be
initialized with fnmacro(va_start) prior to calling fn(vfprintf). The
fn(vfprintf) function does not call fnmacro(va_end), so the calling function is
responsible for this.
***/

/* UNSPECIFIED: ??? */
/* UNDEFINED: ??? */
/* IMPLEMENTATION: ??? */
/* LOCALE: ??? */

/* RETURN(NEG): an error occurred */
/* RETURN: the number of characters written */

/*
CEXT1(201112)
*/
