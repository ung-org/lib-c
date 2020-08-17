#include <stdio.h>
#include "__stdio.h"
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

/** open a file stream **/
errno_t fopen_s(FILE * restrict * restrict streamptr,
	const char * restrict filename,
	const char * restrict mode);
{
	__C_EXT(1, 201112L);
	return 0;
}

/***
The fn(fopen) function opens a file stream associated with the file
arg(filename).

The type of file and allowed operations are determined by arg(mode):

string(r)	text file; read-only
string(w)	text file; write-only; truncate to 0 bytes
string(a)	text file; append
string(rb)	binary file; read-only
string(wb)	binary file; write-only; truncate to 0 bytes
string(ab)	binary file; append
string(r+)	text file; update (read and write)
string(w+)	text file; update (read and write); truncate to 0 bytes
string(a+)	text file; update (read and write); append data to end of file
string(r+b)	binary file; update (read and write)
string(rb+)	binary file; update (read and write)
string(w+b)	binary file; update (read and write); truncate to 0 bytes
string(wb+)	binary file; update (read and write); truncate to 0 bytes
string(a+b)	binary file; update (read and write); append data to end of file
string(ab+)	binary file; update (read and write); append data to end of file

File streams are opened in fully buffered mode if and only if arg(filename) is
not an interactive device.

The error and end-of-file indicators are cleared.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN(NULL): failure */
/* RETURN: a pointer to the new file stream */

/*
CEXT1(201112)
*/
