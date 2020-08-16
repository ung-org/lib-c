#include "stdio.h"
#include <stdarg.h>
#include <stdint.h>

/** write formatted output to a string **/
int vsprintf_s(char *s, rsize_t n, const char *format, va_list arg)
{
	__C_EXT(1, 201112L);
	return vsnprintf(s, SIZE_MAX, format, arg);
}

/***
The fn(vsprintf) function is equivalent to fn(sprintf), but with a type(va_list)
argument instead of variadic arguments. The argument arg(arg) must be
initialized with fnmacro(va_start) prior to calling fn(vsprintf). The
fn(vsprintf) function does not call fnmacro(va_end), so the calling function is
responsible for this.
***/

/* UNSPECIFIED: ??? */
/* UNDEFINED: ??? */
/* IMPLEMENTATION: ??? */
/* LOCALE: ??? */

/* RETURN: the number of characters written, not including the final char(\0) */

/*
CEXT1(201112)
*/
