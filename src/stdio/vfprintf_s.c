#include "stdio.h"
#include "__stdio.h"
#include <stdarg.h>

/** write formatted output to a file stream **/
int vfprintf_s(FILE * restrict stream, const char * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	va_list ap;
	va_copy(ap, arg);
	int len = vsnprintf(NULL, 0, format, arg);
	char *buf = malloc(len + 1);
	len = vsnprintf(buf, len, format, ap);
	va_end(ap);
	len = (int)fwrite(buf, sizeof(*buf), len, stream);
	free(buf);
	return len;
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
