#include <stdio.h>
#include <stdarg.h>
#include "_stdio.h"

/** read formatted input from a string **/
int sscanf_s(const char * restrict s, const char * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vsscanf(s, format, ap);
	va_end(ap);
	return ret;
}

/***
The fn(sscanf) function reads formatted input from the string arg(s). The
format of arg(format) at the variadic arguments is the same as that for
fn(scanf).
***/

/* UNSPECIFIED: ??? */
/* UNDEFINED: ??? */
/* IMPLEMENTATION: ??? */
/* LOCALE: ??? */

/* RETURN(EOF): an input failure occurred */
/* RETURN: the number of input items assigned */

/*
CEXT1(201112)
*/
