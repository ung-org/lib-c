#include <stdio.h>
#include <stdarg.h>

/** read formatted input **/
int scanf_s(const char * restrict format, ...)
{
	__C_EXT(1, 201112L);
        int retval;
        va_list ap;
        va_start(ap, format);
        retval = vfscanf_s(stdin, format, ap);
        va_end(ap);
        return retval;
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
