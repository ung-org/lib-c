#if 0

#include <stdio.h>
#include "__stdio.h"
#include <fcntl.h>
#include <string.h>

/** reopen a file stream with a new file **/
errno_t freopen_s(FILE * restrict * restrict newstreamptr,
	const char * restrict filename,
	const char * restrict mode,
	FILE * restrict stream)
{
	__C_EXT(1, 201112L);
	return 0;
}

/***
The fn(freopen) function changes the file associated with arg(stream) to
arg(filename). The meaning of arg(mode) is the same as with fn(fopen).

Whatever file is currently associated with arg(stream) is closed, ignoring any
errors.

The error and end-of-file indicators are cleared.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN(NULL): the open operation failed */
/* RETURN: the value of arg(stream) */

/*
CEXT1(201112)
*/


#endif
