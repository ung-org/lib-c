#include <stdio.h>
#include <stdarg.h>
#include "_stdio.h"

/** read formatted input **/
int scanf_s(const char * restrict format, ...)
{
	SIGNAL_SAFE(0);

	va_list ap;
	va_start(ap, format);
	int ret = vfscanf_s(stdin, format, ap);
	va_end(ap);
	return ret;
}

/***
The fn(scanf) function reads formatted input from macro(stdin).

FIXME: scanf format goes here
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
