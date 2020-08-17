#include <stdio.h>

/* open a temporary file stream */
errno_t tmpfile_s(FILE * restrict * restrict streamptr)
{
	__C_EXT(1, 201112L);
	return 0;
}

/***
The fn(tmpfile) function creates a temporary binary file stream for update (as
when arg(mode) is specified as string(wb+) to fn(fopen)). The file stream will
be automatically removed when closed by fn(fclose) or when the program exits.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: whether the temporary file is removed if the program terminates abnormally */
/* LOCALE: - */

/* RETURN(NULL): a temporary file stream could not be created */
/* RETURN: a pointer to the temporary file stream */

/*
CEXT1(201112)
*/
