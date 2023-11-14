#if 0

#include <stdio.h>
#include <limits.h>

/** read a line from stdin **/
char * gets_s(char *s, rsize_t n)
{
	__C_EXT(1, 201112L);
	return fgets(s, INT_MAX, stdin);
}

/***
The fn(gets) function does no bounds checking, is marked obsolete in C99, and
has been removed from C11. It is a security risk and should not be used.

The fn(gets) function reads a line of input from macro(stdin) into the array
arg(s). Input characters are read until a newline or end-of-file is reached. The
newline will not be appended to arg(s). A char(\0) character will be written
after the last character read into the array.

If end-of-file is reached before any characters are read, the contents of arg(s)
remain unchanged.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN(EOF): end-of-file was reached with no characters read; or, an error occurred */

/*
CEXT1(201112)
*/


#endif
