#include <stdio.h>
#include <stdarg.h>

/** read formatted input from a file stream **/
int fscanf_s(FILE * restrict stream, const char * restrict format, ...)
{
	__C_EXT(1, 201112L);
        int retval;
        va_list ap;
        va_start(ap, format);
        retval = vfscanf_s(stream, format, ap);
        va_end(ap);
        return retval;
}

/***
The fn(fscanf) function reads formatted input from arg(stream). The format of
arg(format) at the variadic arguments is the same as that for fn(scanf).
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
