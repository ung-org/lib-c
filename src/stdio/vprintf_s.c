#include <stdio.h>
#include "_stdio.h"

/** write formatted output **/
int vprintf_s(const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	return vfprintf(stdout, format, arg);
}

/***
The fn(vprintf) function is equivalent to fn(printf), but with a type(va_list)
argument instead of variadic arguments. The argument arg(arg) must be
initialized with fnmacro(va_start) prior to calling fn(vprintf). The
fn(vprintf) function does not call fnmacro(va_end), so the calling function is
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
