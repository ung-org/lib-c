#if 0

#include <stdio.h>
#include <stdarg.h>

/** write formatted output **/
int printf_s(const char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	int ret = vfprintf_s(stdout, format, ap);
	va_end(ap);
	return ret;
}

/***
The fn(fprintf) function writes a formatted string to macro(stdout).

FIXME: printf format goes here
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


#endif
