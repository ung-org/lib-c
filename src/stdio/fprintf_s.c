#if 0

#include <stdio.h>
#include <stdarg.h>

/** write formatted output to a file stream **/
int fprintf_s(FILE * restrict stream, const char * restrict format, ...)
{
	__C_EXT(1, 201112L);
	int retval;
	va_list ap;
	va_start(ap, format);
	retval = vfprintf_s(stream, format, ap);
	va_end(ap);
	return retval;
}

/***
The fn(fprintf) function writes a formatted string to arg(stream). The format
of arg(format) and the variadic arguments is the same as that for fn(printf).
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
